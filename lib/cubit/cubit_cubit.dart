import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_state.dart';

class CounterCubit extends Cubit<CounterInitial> {
  CounterCubit() : super(CounterInitial(counterValue: 0));

  void increment() =>
      emit(CounterInitial(counterValue: state.counterValue + 1));

  void decrement() =>
      emit(CounterInitial(counterValue: state.counterValue - 1));
}