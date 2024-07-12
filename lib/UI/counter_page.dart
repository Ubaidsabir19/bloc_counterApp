import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc/counter_bloc.dart';
import '../bloc/counter_bloc/counter_event.dart';
import '../bloc/counter_bloc/counter_state.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CounterBloc, CounterState>(
        listener: (context, state) {},
        builder: (context, state) {
          final counterValue= (state as CounterInitial).counter;
          return Center(
            child: Text('$counterValue'),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Increment());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 8.0,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Decrement());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 8.0,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(Reset());
            },
            child: const Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }
}
