part of 'app_bloc.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class RandomNumber extends AppState{
  final int? number;

  RandomNumber({this.number});
}
