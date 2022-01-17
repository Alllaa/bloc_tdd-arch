
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:newblock/core/usecases/usecase.dart';
import 'package:newblock/features/bored_activity/domain/usecases/get_random_bored_activity.dart';

part 'bored_activity_event.dart';
part 'bored_activity_state.dart';

class BoredActivityBloc extends Bloc<BoredActivityEvent, BoredActivityState> {
  final GetRandomBoredActivity getRandomBoredActivity;

  BoredActivityBloc(this.getRandomBoredActivity)
      : super(BoredActivityLoadingState()) {
    on<LoadApiEvent>((event, emit) async {
      emit(BoredActivityLoadingState());
      final failureOrActivity = await getRandomBoredActivity(NoParams());

      emit(failureOrActivity.fold(
        (failure) => ErrorState('_mapFailureToMessage(failure)'),
        (activity) => BoredActivityLoadedState(
            activity.activity, activity.type, activity.participants),
      ));
    });
  }
}
