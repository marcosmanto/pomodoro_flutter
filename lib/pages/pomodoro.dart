import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_flutter/components/pomodoro_stopwatch.dart';
import 'package:pomodoro_flutter/components/time_entry.dart';
import 'package:pomodoro_flutter/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: PomodoroStopwatch()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (context) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TimeEntry(
                    title: 'Trabalho',
                    value: store.workTime,
                    inc: store.incrementWorkTime,
                    dec: store.decrementWorkTime,
                  ),
                  TimeEntry(
                    title: 'Descanso',
                    value: store.restTime,
                    inc: store.incrementRestTime,
                    dec: store.decrementRestTime,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
