import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  const CounterState(this.count);
  final int count;

  const CounterState.initial() : this(0);

  CounterState copyWith({int? count}) => CounterState(count ?? this.count);

  @override
  List<Object> get props => [count];
}
