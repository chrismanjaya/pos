import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'privilege_model.freezed.dart';

@freezed
abstract class PrivilegeModel with _$PrivilegeModel {
  factory PrivilegeModel({
    String id,
    String actionId,
    String menuName,
    int menuCode,
    String action,
  }) = _PrivilegeModel;

  factory PrivilegeModel.empty() => PrivilegeModel(
        id: "",
        actionId: "",
        menuName: "",
        menuCode: 0,
        action: "",
      );
}
