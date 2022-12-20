import 'package:mobx/mobx.dart';

part 'counter.store.g.dart';

class CounterStore = CounterBase with _$CounterStore;

abstract class CounterBase with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}
