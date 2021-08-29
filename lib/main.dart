import 'package:binding_example/home/screen.dart';
import 'package:flutter/material.dart';
import 'package:binding_example/models/counter_model.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root();

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Binding Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterBinder(
          /// we use binder before screen
          /// because HomeScreen will use counter
          /// inside it's build method
          counter: CounterModel(),
          child: const HomeScreen(),
        ),
      );
}
