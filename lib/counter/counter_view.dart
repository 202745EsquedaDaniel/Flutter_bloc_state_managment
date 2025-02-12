/*

COUNTER VIEW: responsable for UI

- use BlocBuilder

*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/counter/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  // BUILD UI
  @override
  Widget build(BuildContext context) {
    // SCAFOLD
    return Scaffold(
      //  BODY
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(state.toString(), style: const TextStyle(fontSize: 50)),
          );
        },
      ),

      // BUTTONS
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //  increment button
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add), // Esta coma se mantendrá
          ),
          const SizedBox(height: 10),

          //  decrement button
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
