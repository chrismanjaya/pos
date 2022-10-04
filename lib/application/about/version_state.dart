part of 'version_bloc.dart';

@freezed
abstract class VersionState with _$VersionState {
  const factory VersionState({
    @required VersionModel versionModel,
  }) = _VersionState;

  factory VersionState.initial() => VersionState(
        versionModel: VersionModel.empty(),
      );
}
