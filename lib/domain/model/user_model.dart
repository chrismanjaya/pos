import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/group_model.dart';

part 'user_model.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    String uid,
    String username,
    String email,
    BranchModel branch,
    GroupModel group,
    List<BranchModel> listBranch,
  }) = _UserModel;

  factory UserModel.empty() => UserModel(
        uid: "",
        username: "",
        email: "",
        branch: BranchModel.empty(),
        group: GroupModel.empty(),
        listBranch: [],
      );
}
