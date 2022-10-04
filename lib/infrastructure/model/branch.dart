import 'package:freezed_annotation/freezed_annotation.dart';
part 'branch.freezed.dart';

@freezed
abstract class Branch with _$Branch {
  factory Branch({
    String id,
    String branchName,
    String address,
    String phoneNumber,
  }) = _Branch;

  factory Branch.empty() => Branch(
        id: "",
        branchName: "",
        address: "",
        phoneNumber: "",
      );
}
