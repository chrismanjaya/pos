import 'package:dartz/dartz.dart';
import 'package:pos/domain/failure/sign_in_failure.dart';
import 'package:pos/domain/services/sign_in/sign_in_services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignInServices)
class SignInServicesImp implements SignInServices {
  @override
  Either<String, Unit> validateEmail(String email) {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    return (RegExp(emailRegex).hasMatch(email))
        ? right(unit)
        : left(SignInFailure.INVALID_EMAIL_FORMAT);
  }

  @override
  Either<String, Unit> validatePassword(String password) {
    const int minimumPasswordLenght = 8;
    return (password.length >= minimumPasswordLenght)
        ? right(unit)
        : left(SignInFailure.SHORT_PASSWORD);
  }
}
