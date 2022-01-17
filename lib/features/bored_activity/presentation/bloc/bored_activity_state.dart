part of 'bored_activity_bloc.dart';

@immutable
abstract class BoredActivityState extends Equatable {}

class BoredActivityLoadingState extends BoredActivityState {
  @override
  // TODO: implement props
  List<Object?> get props =>[];
}

class BoredActivityLoadedState extends BoredActivityState {
  final String? activityName;
  final String? activityType;
  final int? participants;

  BoredActivityLoadedState(this.activityName, this.activityType, this.participants);
  @override
  // TODO: implement props
  List<Object?> get props => [activityName, activityType, participants];
}

class ErrorState extends BoredActivityState{
  final String message;

  ErrorState(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];

}

class BoredActivityNoInternetState extends BoredActivityState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
