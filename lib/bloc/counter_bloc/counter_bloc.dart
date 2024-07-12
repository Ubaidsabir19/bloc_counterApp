import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(counter: 0)) {
    on<CounterEvent>((event, emit) {
      var s = (state as CounterInitial).counter;
      if (event is Increment) {
        emit(CounterInitial(counter: s + 1));
      }
      if (event is Decrement) {
        emit(CounterInitial(counter: s - 1));
      }
      if(event is Reset) {
        emit(CounterInitial(counter: s = 0));
      }
    });
  }
}