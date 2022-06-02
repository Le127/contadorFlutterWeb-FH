import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  CounterProvider(String base) {
    //Si se puede parsear, la base pasa a ser el valor del counter
    if (int.tryParse(base) != null) {
      _counter = int.parse(base);
    }
  }

  get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
