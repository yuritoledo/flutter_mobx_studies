import 'package:mobx/mobx.dart';

class Counter {
  Counter() {
    increment = Action(_increment);
  }

  Observable _count = Observable(0);
  get count => _count.value;

  Action increment;

  _increment() {
    _count.value++;
  }
}
