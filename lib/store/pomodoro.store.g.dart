// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on PomodoroBase, Store {
  late final _$workTimeAtom =
      Atom(name: 'PomodoroBase.workTime', context: context);

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  late final _$restTimeAtom =
      Atom(name: 'PomodoroBase.restTime', context: context);

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  late final _$PomodoroBaseActionController =
      ActionController(name: 'PomodoroBase', context: context);

  @override
  void incrementWorkTime() {
    final _$actionInfo = _$PomodoroBaseActionController.startAction(
        name: 'PomodoroBase.incrementWorkTime');
    try {
      return super.incrementWorkTime();
    } finally {
      _$PomodoroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementWorkTime() {
    final _$actionInfo = _$PomodoroBaseActionController.startAction(
        name: 'PomodoroBase.decrementWorkTime');
    try {
      return super.decrementWorkTime();
    } finally {
      _$PomodoroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementRestTime() {
    final _$actionInfo = _$PomodoroBaseActionController.startAction(
        name: 'PomodoroBase.incrementRestTime');
    try {
      return super.incrementRestTime();
    } finally {
      _$PomodoroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementRestTime() {
    final _$actionInfo = _$PomodoroBaseActionController.startAction(
        name: 'PomodoroBase.decrementRestTime');
    try {
      return super.decrementRestTime();
    } finally {
      _$PomodoroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workTime: ${workTime},
restTime: ${restTime}
    ''';
  }
}
