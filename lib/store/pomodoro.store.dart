import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = PomodoroBase with _$PomodoroStore;

abstract class PomodoroBase with Store {
  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @action
  void incrementWorkTime() {
    workTime++;
  }

  @action
  void decrementWorkTime() {
    workTime--;
  }

  @action
  void incrementRestTime() {
    restTime++;
  }

  @action
  void decrementRestTime() {
    restTime--;
  }
}
