import 'package:flutter_b_counter/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState.initial()) {
    on<CounterIncrementPressed>((event, emit) => emit(
      state.copyWith(count: state.count + 1)
    ));
  }
}
