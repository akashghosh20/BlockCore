part of 'app_bloc.dart';

@immutable
abstract class AppEvent extends Equatable {
  const AppEvent();
}

class RandomNumberGenarate extends AppEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}


