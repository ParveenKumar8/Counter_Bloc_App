import 'package:counter_bloc_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => counterCubit.increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 12.0,
          ),
          FloatingActionButton(
            onPressed: () => counterCubit.decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
          ),
          // const SizedBox(
          //   height: 12.0,
          // ),
          // FloatingActionButton(
          //   onPressed: () => Navigator.of(context).pop(),
          //   tooltip: 'Previous Screen',
          //   child: const Icon(Icons.navigate_before),
          // ),
        ],
      ),
    );
  }
}
