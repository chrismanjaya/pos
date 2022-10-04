import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_model.freezed.dart';

@freezed
abstract class BranchModel with _$BranchModel {
  factory BranchModel({
    String id,
    String branchName,
    String address,
    String phoneNumber,
  }) = _BranchModel;

  factory BranchModel.empty() => BranchModel(
        id: "",
        branchName: "",
        address: "",
        phoneNumber: "",
      );
}
