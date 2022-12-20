import 'package:flutter/material.dart';

class PomodoroStopwatch extends StatelessWidget {
  const PomodoroStopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de trabalhar',
            style: const TextStyle(color: Colors.white, fontSize: 40),
          ),
          const SizedBox(height: 20),
          Text(
            '25:00',
            style: const TextStyle(color: Colors.white, fontSize: 120),
          )
        ],
      ),
    );
  }
}
