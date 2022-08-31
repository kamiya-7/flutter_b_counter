import 'package:flutter/material.dart';
import 'package:flutter_b_counter/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('COUNTER')),
      body: BlocBuilder<CounterBloc, int>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, count) => Center(
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 30.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.read<CounterBloc>().add(CounterIncrementPressed())
      ),
    );
  }
}