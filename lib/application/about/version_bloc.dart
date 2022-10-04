import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/model/version_model.dart';
import 'package:pos/domain/services/version/version_services.dart';

part 'version_event.dart';
part 'version_state.dart';
part 'version_bloc.freezed.dart';

@injectable
class VersionBloc extends Bloc<VersionEvent, VersionState> {
  final VersionServices _versionServices;
  VersionBloc(this._versionServices) : super(VersionState.initial());

  @override
  Stream<VersionState> mapEventToState(VersionEvent event) async* {
    yield* event.map(
      getVersion: (e) async* {
        final getVersionInfo = await _versionServices.getVersionInfo();
        yield state.copyWith(
          versionModel: getVersionInfo,
        );
      },
    );
  }
}
