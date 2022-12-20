import 'package:flutter/material.dart';
import 'package:pomodoro_flutter/components/stopwatch_button.dart';

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
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                StopwatchButton(text: 'Iniciar', icon: Icons.play_arrow),
                //StopwatchButton(text: 'Parar', icon: Icons.stop),
                StopwatchButton(text: 'Reiniciar', icon: Icons.refresh)
              ],
            ),
          )
        ],
      ),
    );
  }
}
