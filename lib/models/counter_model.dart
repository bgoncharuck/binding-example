import 'package:flutter/widgets.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;

  set count(int newVal) {
    _count = newVal;
    notifyListeners();
  }

  int get count => _count;
}

class CounterBinder extends InheritedWidget {
  const CounterBinder({required CounterModel counter, required Widget child})
      : _model = counter,
        super(child: child);

  final CounterModel _model;

  static CounterModel of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType<CounterBinder>() as CounterBinder)._model;

  @override
  bool updateShouldNotify(CounterBinder oldWidget) => false;
}
