import 'package:basketball_app/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  int teamApoints = 0;
  int teamBpoints = 0;
  CounterCubit() : super(CounterAStates() as CounterStates);

  // ignore: non_constant_identifier_names
  void TeamAPoints(int buttonNumber) {
    teamApoints += buttonNumber;
    emit(CounterAStates() as CounterStates);
  }

  // ignore: non_constant_identifier_names
  void TeamBPoints(int buttonNumber) {
    teamBpoints += buttonNumber;
    emit(CounterBStates() as CounterStates);
  }
  // ignore: non_constant_identifier_names
  void ResetAPoints({required int buttonNumber}) {
    teamApoints = buttonNumber;
    emit(CounterAResetStates() as CounterStates);
  }
  // ignore: non_constant_identifier_names
  void ResetBPoints({required int buttonNumber}) {
    teamBpoints = buttonNumber;
    emit(CounterAResetStates() as CounterStates);
  }
}
