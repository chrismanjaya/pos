import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/user_model.dart';

abstract class UserServices {
  Future<Either<String, List<UserModel>>> getAllUser();
  Future<Either<String, UserModel>> getUserByUid(String uid);
  Future<Either<String, Unit>> addUser(UserModel userModel);
  Future<Either<String, Unit>> updateUser(UserModel userModel);
  Future<Either<String, Unit>> resetUserPassword(UserModel userModel);
}
