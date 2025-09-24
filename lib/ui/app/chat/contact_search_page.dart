// contact_search_page.dart
import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:nextmind_mobile_v2/ui/app/chat/viewmodels/contact_search_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/core/dimens.dart';
import 'package:result_command/result_command.dart';
import 'package:routefly/routefly.dart';

class ContactSearchPage extends StatefulWidget {
  const ContactSearchPage({super.key});

  @override
  State<ContactSearchPage> createState() => _ContactSearchPageState();
}

class _ContactSearchPageState extends State<ContactSearchPage> {
  final ContactSearchViewmodel viewModel = injector
      .get<ContactSearchViewmodel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adicionar contatos',
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Routefly.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        toolbarHeight: Dimens.largePadding,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(Dimens.mediumPadding),
        child: Column(
          children: [
            _SearchField(
              controller: viewModel.searchController,
              onChanged: (q) => viewModel.searchCommand.execute(q),
              onClear: () {
                viewModel.searchController.clear();
                viewModel.searchCommand.execute('');
              },
            ),
            SizedBox(height: Dimens.mediumPadding),
            Expanded(
              child: ListenableBuilder(
                listenable: viewModel.searchCommand,
                builder: (context, _) {
                  final state = viewModel.searchCommand.value;
                  if (state is RunningCommand) {
                    return const _CenteredProgress();
                  }
                  if (viewModel.results.isEmpty) {
                    return const _EmptyResult();
                  }
                  return RefreshIndicator(
                    onRefresh: () => viewModel.searchCommand.execute(
                      viewModel.searchController.text,
                    ),
                    child: _DirectoryList(
                      users: viewModel.results,
                      onAdd: viewModel.addContact,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({
    required this.controller,
    required this.onChanged,
    required this.onClear,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Pesquisar usuários...',
        suffixIcon: IconButton(
          onPressed: onClear,
          icon: const Icon(Icons.close),
        ),
      ),
    );
  }
}

class _DirectoryList extends StatelessWidget {
  const _DirectoryList({required this.users, required this.onAdd});

  final List<Contact> users;
  final ValueChanged<Contact> onAdd;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.only(bottom: Dimens.largePadding),
      itemCount: users.length,
      separatorBuilder: (_, __) => SizedBox(height: Dimens.smallPadding),
      itemBuilder: (context, index) {
        final user = users[index];
        return _UserTile(user: user, onAdd: onAdd);
      },
    );
  }
}

class _UserTile extends StatelessWidget {
  const _UserTile({required this.user, required this.onAdd});

  final Contact user;
  final ValueChanged<Contact> onAdd;

  String _initials(String name) {
    final parts = name.trim().split(RegExp(r'\s+'));
    final a = parts.isNotEmpty ? parts.first.characters.first : '';
    final b = parts.length > 1 ? parts.last.characters.first : '';
    return (a + b).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final avatar = user.photoUrl.isEmpty
        ? CircleAvatar(child: Text(_initials(user.nickname)))
        : CircleAvatar(backgroundImage: NetworkImage(user.photoUrl));

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(Dimens.mediumPadding),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: Dimens.smallPadding,
            horizontal: Dimens.smallPadding,
          ),
          child: Row(
            children: [
              avatar,
              SizedBox(width: Dimens.mediumPadding),
              Expanded(
                child: Text(
                  user.nickname,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: Dimens.smallPadding),
              ElevatedButton.icon(
                onPressed: () => onAdd(user),
                icon: Icon(
                  Icons.person_add,
                  color: theme.colorScheme.onPrimary,
                ),
                label: const Text('Adicionar'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.mediumPadding,
                    vertical: Dimens.smallPadding,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CenteredProgress extends StatelessWidget {
  const _CenteredProgress();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _EmptyResult extends StatelessWidget {
  const _EmptyResult();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(Dimens.mediumPadding),
        child: Text(
          'Nenhum usuário encontrado.',
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
