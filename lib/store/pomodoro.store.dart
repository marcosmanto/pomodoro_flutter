import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = PomodoroBase with _$PomodoroStore;

enum IntervalType { work, rest }

abstract class PomodoroBase with Store {
  @observable
  bool started = false;

  @observable
  int minutes = 2;

  @observable
  int seconds = 0;

  @observable
  int workTime = 2;

  @observable
  int restTime = 1;

  @observable
  IntervalType intervalType = IntervalType.work;

  @action
  void start() {
    started = true;
  }

  @action
  void stop() {
    started = false;
  }

  @action
  void restart() {
    started = false;
  }

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

  bool isWorking() {
    return intervalType == IntervalType.work;
  }

  bool isResting() {
    return intervalType == IntervalType.rest;
  }
}
