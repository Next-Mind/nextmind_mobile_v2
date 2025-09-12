import 'package:nextmind_mobile_v2/utils/exceptions/exceptions.dart';

class LocalStorageException extends AppException {
  LocalStorageException(super.message, [super.stackTrace]);
}

class EmptyLocalStorageException extends AppException {
  EmptyLocalStorageException(super.message, [super.stackTrace]);
}
