import 'package:flutter/material.dart';
import 'package:pomodoro_flutter/components/time_entry.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('Pomodoro'),
          TimeEntry(title: 'Trabalho', value: 25),
          TimeEntry(title: 'Descanso', value: 5),
        ],
      ),
    );
  }
}
