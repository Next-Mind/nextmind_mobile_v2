import 'dart:convert';

import 'package:nextmind_mobile_v2/data/services/local_storage.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:nextmind_mobile_v2/utils/exceptions/local_storage_exception.dart';
import 'package:result_dart/result_dart.dart';

const _contactKey = '_contactKey';
const _contactDirectoryKey = '_contactDirectoryKey';

class ContactLocalStorage {
  final LocalStorage _localStorage;

  ContactLocalStorage(this._localStorage);

  AsyncResult<List<Contact>> fetchContacts() async {
    final res = await _localStorage.getData(_contactKey);

    return res.fold<AsyncResult<List<Contact>>>(
      (raw) async {
        try {
          final decoded = jsonDecode(raw);

          if (decoded is! List) {
            return Failure(
              LocalStorageException('Formato inválido ao ler contatos.'),
            );
          }

          final list = decoded
              .map((e) => Contact.fromJson(Map<String, dynamic>.from(e)))
              .toList()
              .cast<Contact>();

          return Success(list);
        } catch (e) {
          return Failure(
            LocalStorageException('Falha ao decodificar contatos.'),
          );
        }
      },
      (err) async {
        if (err is EmptyLocalStorageException) {
          return Success(<Contact>[]);
        }
        return Failure(LocalStorageException('Falha ao obter contatos.'));
      },
    );
  }

  AsyncResult<Unit> saveAll(List<Contact> contacts) async {
    try {
      final jsonList = contacts.map((c) => c.toJson()).toList(growable: false);
      final raw = jsonEncode(jsonList);

      final res = await _localStorage.saveData(_contactKey, raw);
      return res.fold<AsyncResult<Unit>>(
        (_) async => Success.unit(),
        (err) async =>
            Failure(LocalStorageException('Falha ao salvar contatos.')),
      );
    } catch (e) {
      return Failure(LocalStorageException('Erro ao serializar contatos.'));
    }
  }

  AsyncResult<Unit> add(Contact contact) async {
    final currentRes = await fetchContacts();
    return currentRes.fold<AsyncResult<Unit>>((list) async {
      final exists = list.any((c) => c.id == contact.id);
      if (exists) {
        return Failure(
          LocalStorageException('Contato já existe (id duplicado).'),
        );
      }
      final updated = [...list, contact];
      return saveAll(updated);
    }, (err) async => Failure(err));
  }

  AsyncResult<Unit> update(Contact contact) async {
    final currentRes = await fetchContacts();
    return currentRes.fold<AsyncResult<Unit>>((list) async {
      final index = list.indexWhere((c) => c.id == contact.id);
      if (index < 0) {
        return Failure(
          LocalStorageException('Contato não encontrado para atualização.'),
        );
      }
      final updated = [...list]..[index] = contact;
      return saveAll(updated);
    }, (err) async => Failure(err));
  }

  AsyncResult<Unit> upsert(Contact contact) async {
    final currentRes = await fetchContacts();
    return currentRes.fold<AsyncResult<Unit>>((list) async {
      final index = list.indexWhere((c) => c.id == contact.id);
      final updated = [...list];
      if (index >= 0) {
        updated[index] = contact;
      } else {
        updated.add(contact);
      }
      return saveAll(updated);
    }, (err) async => Failure(err));
  }

  AsyncResult<Unit> removeById(String id) async {
    final currentRes = await fetchContacts();
    return currentRes.fold<AsyncResult<Unit>>((list) async {
      final updated = list.where((c) => c.id != id).toList();
      return saveAll(updated);
    }, (err) async => Failure(err));
  }

  AsyncResult<Unit> clear() => _localStorage.removeData(_contactKey);

  AsyncResult<Contact> getById(String id) async {
    final currentRes = await fetchContacts();
    return currentRes.fold<AsyncResult<Contact>>(
      (list) async => Success(list.firstWhere((c) => c.id == id)),
      (err) async => Failure(err),
    );
  }

  AsyncResult<Unit> seedDirectoryIfEmpty() async {
    final exists = await _localStorage.getData(_contactDirectoryKey);
    return exists.fold<AsyncResult<Unit>>(
      (_) async => Success(unit), // já existe
      (err) async {
        if (err is! EmptyLocalStorageException) {
          return Failure(
            LocalStorageException('Falha ao verificar diretório.'),
          );
        }
        final defaults = <Contact>[
          Contact(id: 'u_ana', nickname: 'Ana Paula', photoUrl: ''),
          Contact(id: 'u_bia', nickname: 'Beatriz Lima', photoUrl: ''),
          Contact(id: 'u_cai', nickname: 'Caio Andrade', photoUrl: ''),
          Contact(id: 'u_dan', nickname: 'Daniel Souza', photoUrl: ''),
          Contact(id: 'u_eve', nickname: 'Evelyn Rocha', photoUrl: ''),
          Contact(id: 'u_fel', nickname: 'Felipe Martins', photoUrl: ''),
          Contact(id: 'u_gab', nickname: 'Gabriela Nunes', photoUrl: ''),
          Contact(id: 'u_hug', nickname: 'Hugo Alves', photoUrl: ''),
          Contact(id: 'u_ivy', nickname: 'Ivy Silva', photoUrl: ''),
          Contact(id: 'u_jon', nickname: 'Jonas Pereira', photoUrl: ''),
        ];
        final raw = jsonEncode(defaults.map((c) => c.toJson()).toList());
        final saved = await _localStorage.saveData(_contactDirectoryKey, raw);
        return saved.fold<AsyncResult<Unit>>(
          (_) async => Success.unit(),
          (_) async =>
              Failure(LocalStorageException('Falha ao criar diretório.')),
        );
      },
    );
  }

  AsyncResult<List<Contact>> fetchDirectory({String? query}) async {
    await seedDirectoryIfEmpty();

    final res = await _localStorage.getData(_contactDirectoryKey);
    return res.fold<AsyncResult<List<Contact>>>(
      (raw) async {
        try {
          final decoded = jsonDecode(raw);
          if (decoded is! List) {
            return Failure(
              LocalStorageException('Formato inválido no diretório.'),
            );
          }
          var list = decoded
              .map((e) => Contact.fromJson(Map<String, dynamic>.from(e)))
              .toList()
              .cast<Contact>();

          final q = (query ?? '').trim().toLowerCase();
          if (q.isNotEmpty) {
            list = list
                .where((c) => c.nickname.toLowerCase().contains(q))
                .toList();
          }
          return Success(list);
        } catch (_) {
          return Failure(LocalStorageException('Falha ao ler diretório.'));
        }
      },
      (err) async =>
          Failure(LocalStorageException('Falha ao obter diretório.')),
    );
  }

  AsyncResult<List<Contact>> suggestNewContacts({String? query}) async {
    final currentRes = await fetchContacts();
    final dirRes = await fetchDirectory(query: query);

    if (currentRes.isError()) return Failure(currentRes.exceptionOrNull()!);
    if (dirRes.isError()) return Failure(dirRes.exceptionOrNull()!);

    final existing = currentRes.getOrThrow();
    final directory = dirRes.getOrThrow();
    final existingIds = existing.map((e) => e.id).toSet();

    final filtered = directory
        .where((c) => !existingIds.contains(c.id))
        .toList();

    return Success(filtered);
  }
}
