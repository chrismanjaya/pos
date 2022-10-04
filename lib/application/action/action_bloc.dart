import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'action_event.dart';
part 'action_state.dart';
part 'action_bloc.freezed.dart';

@injectable
class ActionBloc extends Bloc<ActionEvent, ActionState> {
  ActionBloc() : super(ActionState.initial());

  @override
  Stream<ActionState> mapEventToState(ActionEvent event) async* {
    yield* event.map(
      setAction: (e) async* {
        yield state.copyWith(
          action: e.action,
        );
      },
      actionClicked: (e) async* {
        yield state.copyWith(
          isSelected: !state.isSelected,
        );
      },
    );
  }
}
