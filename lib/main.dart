import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp4/bloc/counter_bloc.dart';
import 'package:tp4/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Counter Value is : ',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is CounterInitial) {
                return Text("0");
              } else if (state is CounterValueChangedState) {
                return Text(state.counter.toString());
              } else {
                return SizedBox();
              }
            },
          ),
          ButtonsWidget()
        ],
      ),
    );
  }
}
