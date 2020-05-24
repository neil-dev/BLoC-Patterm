import 'package:bloc/bloc.dart';
import './counter_event.dart';
import './counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  void onIncrement() {
    add(IncrementEvent());
  }

  void onDecrement() {
    add(DecrementEvent());
  }

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is IncrementEvent) {
      yield state..counter += 1;
    } else if (event is DecrementEvent) {
      yield state..counter -= 1;
    }
  }
}
