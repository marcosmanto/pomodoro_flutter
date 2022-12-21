import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_flutter/components/stopwatch_button.dart';
import 'package:pomodoro_flutter/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class PomodoroStopwatch extends StatelessWidget {
  const PomodoroStopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    final PomodoroStore store = Provider.of(context);

    return Observer(
      builder: (context) => Container(
        color: store.isWorking() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              store.isWorking() ? 'Hora de trabalhar' : 'Hora de descansar',
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),
            const SizedBox(height: 20),
            Text(
              '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
              style: const TextStyle(color: Colors.white, fontSize: 120),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (!store.started)
                    StopwatchButton(
                      text: 'Iniciar',
                      icon: Icons.play_arrow,
                      onPress: store.start,
                    ),
                  if (store.started)
                    StopwatchButton(
                      text: 'Parar',
                      icon: Icons.stop,
                      onPress: store.stop,
                    ),
                  StopwatchButton(
                    text: 'Reiniciar',
                    icon: Icons.refresh,
                    onPress: store.restart,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
