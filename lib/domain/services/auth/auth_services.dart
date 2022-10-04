import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/user_model.dart';

abstract class AuthServices {
  Future<Either<String, Unit>> checkAuth();
  Future<Either<String, Unit>> signIn(String email, String password);
  Future<Either<String, Unit>> signOut();
  Future<Either<String, UserModel>> getUserData();
}
