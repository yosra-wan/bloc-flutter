import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp4/bloc/counter_bloc.dart';

class ButtonsWidget extends StatefulWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  _ButtonsWidgetState createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 20),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.remove), // Changed icon to 'remove'
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResetEvent());
          },
          tooltip: 'Reset',
          child: const Icon(Icons.loop), // Changed icon to 'loop'
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
