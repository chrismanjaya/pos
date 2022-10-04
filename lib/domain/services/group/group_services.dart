import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/group_model.dart';

abstract class GroupServices {
  Future<Either<String, List<GroupModel>>> getAllGroup();
  Future<Either<String, GroupModel>> getGroupByUid(String groupId);
  Future<Either<String, Unit>> addGroup(GroupModel groupModel);
  Future<Either<String, Unit>> updateGroup(GroupModel groupModel);
  Future<Either<String, Unit>> deleteGroup(String groupId);
}
