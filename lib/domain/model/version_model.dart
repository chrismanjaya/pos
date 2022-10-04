import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_model.freezed.dart';

@freezed
abstract class VersionModel with _$VersionModel {
  factory VersionModel({
    String appName,
    String packageName,
    String version,
    String buildNumber,
  }) = _VersionModel;

  factory VersionModel.empty() => VersionModel(
        appName: "",
        packageName: "",
        version: "",
        buildNumber: "",
      );
}
