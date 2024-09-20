import 'package:basketball_counter/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(IntialState());
  int teamA = 0;
  int teamB = 0;
  incrementTeam({required String teamName, required int num}) {
    if (teamName == 'A') {
      teamA += num;
      emit(TeamAincrement());
    } else {
      teamB += num;
      emit(TeamBincrement());
    }
  }

  resetCounter() {
    teamA = 0;
    teamB = 0;
    emit(ResetCounter());
  }
}
