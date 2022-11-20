import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {

 Future<int> random()async{
    Random random = new Random();
    int randomNumber = random.nextInt(100);

    return randomNumber;
  }

  AppBloc() : super(AppInitial()) {
    on<AppEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<RandomNumberGenarate>((event, emit) {
      random().then((value) {
        emit(RandomNumber(number: value));
      });
    });
  }
}
