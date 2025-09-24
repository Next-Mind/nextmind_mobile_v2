import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/category.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentCategoriesViewmodel {
  late final fetchCategoriesCommand = Command0(_fetchCategories);
  final AppointmentRepository _appointmentRepository;

  final List<Category> categories = List.empty(growable: true);

  AppointmentCategoriesViewmodel(this._appointmentRepository) {
    fetchCategoriesCommand.execute();
  }

  AsyncResult<Unit> _fetchCategories() async {
    _appointmentRepository.fetchCategories().fold(
      (categories) => this.categories.addAll(categories),
      (_) => unit,
    );

    return Success(unit);
  }
}
