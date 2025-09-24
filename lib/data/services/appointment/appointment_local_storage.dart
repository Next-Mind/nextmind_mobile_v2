import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/category.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentLocalStorage {
  final List<Availability> _availabilities = [
    Availability(
      id: 'uid1',
      date: DateTime(2025, 09, DateTime.now().day, 11, 00),
      status: 1,
    ),
    Availability(
      id: 'uid2',
      date: DateTime(2025, 09, DateTime.now().day, 12, 00),
      status: 1,
    ),
    Availability(
      id: 'uid3',
      date: DateTime(2025, 09, DateTime.now().day, 13, 00),
      status: 1,
    ),
    Availability(
      id: 'uid4',
      date: DateTime(2025, 09, DateTime.now().day, 14, 00),
      status: 1,
    ),
    Availability(
      id: 'uid5',
      date: DateTime(2025, 09, DateTime.now().day, 15, 00),
      status: 1,
    ),
  ];

  final List<Category> _categories = [
    Category(id: 'id1', name: 'Neuropsicologia'),
    Category(id: 'id2', name: 'Psicoterapia Online'),
    Category(id: 'id3', name: 'Psicoeducação'),
    Category(id: 'id4', name: 'Psiquiatra'),
  ];

  AppointmentLocalStorage();

  AsyncResult<List<Availability>> fetchLocalAvailabilities() async {
    return Success(_availabilities);
  }

  AsyncResult<NextAppointment> fetchNextAppointment() async {
    final nextAppointment = NextAppointment(
      id: 1,
      date: DateTime(2025, 09, 27, 11, 00),
    );
    return Success(nextAppointment);
  }

  AsyncResult<List<Category>> fetchCategories() async {
    return Success(_categories);
  }
}
