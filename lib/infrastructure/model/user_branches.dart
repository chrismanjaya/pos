import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_branches.freezed.dart';

@freezed
abstract class UserBranches with _$UserBranches {
  factory UserBranches({
    String id,
    String userId,
    String branchId,
  }) = _UserBranches;

  factory UserBranches.empty() => UserBranches(
        id: "",
        userId: "",
        branchId: "",
      );
}
