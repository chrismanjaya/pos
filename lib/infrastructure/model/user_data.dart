import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_data.freezed.dart';

@freezed
abstract class UserData with _$UserData {
  factory UserData({
    String id,
    String username,
    String email,
    String groupId,
  }) = _UserData;

  factory UserData.empty() => UserData(
        id: "",
        username: "",
        email: "",
        groupId: "",
      );
}
