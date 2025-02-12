/*

COUNTER PAGE: responsible for providing CounterCubit to CounterView (UI)

- use BlocProvider

*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/counter/counter_cubit.dart';
import 'package:myapp/counter/counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),

      //  Counter View (UI)
      child: CounterView(),
    );
  }
}
