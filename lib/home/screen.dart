import 'package:binding_example/models/counter_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const Center(
          child: CounterText(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            CounterBinder.of(context).count++;
          },
          child: const Icon(Icons.add),
        ),
      );
}

class CounterText extends StatefulWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  _CounterTextState createState() => _CounterTextState();
}

class _CounterTextState extends State<CounterText> {
  @override
  void didChangeDependencies() {
    CounterBinder.of(context).addListener(() => setState(() {}));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) => Text(
        '${CounterBinder.of(context).count}',
        style: Theme.of(context).textTheme.headline4,
      );
}
