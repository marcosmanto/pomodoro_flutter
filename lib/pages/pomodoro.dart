import 'package:flutter/material.dart';
import 'package:pomodoro_flutter/components/pomodoro_stopwatch.dart';
import 'package:pomodoro_flutter/components/time_entry.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: PomodoroStopwatch()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                TimeEntry(title: 'Trabalho', value: 25),
                TimeEntry(title: 'Descanso', value: 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
