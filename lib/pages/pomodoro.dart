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
                    inc: store.started && store.isWorking()
                        ? null
                        : store.incrementWorkTime,
                    dec: store.started && store.isWorking()
                        ? null
                        : store.workTime > 0
                            ? store.decrementWorkTime
                            : null,
                  ),
                  TimeEntry(
                    title: 'Descanso',
                    value: store.restTime,
                    inc: store.started && store.isResting()
                        ? null
                        : store.incrementRestTime,
                    dec: store.started && store.isResting()
                        ? null
                        : store.restTime > 0
                            ? store.decrementRestTime
                            : null,
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
