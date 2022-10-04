import 'package:dartz/dartz.dart';

abstract class SignInServices {
  Either<String, Unit> validateEmail(String email);
  Either<String, Unit> validatePassword(String password);
}
