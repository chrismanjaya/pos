import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/model/privilege_model.dart';

part 'group_model.freezed.dart';

@freezed
abstract class GroupModel with _$GroupModel {
  factory GroupModel({
    String id,
    String groupName,
    List<PrivilegeModel> listPrivilege,
  }) = _GroupModel;

  factory GroupModel.empty() => GroupModel(
        id: "",
        groupName: "",
        listPrivilege: [],
      );
}
