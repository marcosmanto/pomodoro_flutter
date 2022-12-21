import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class TimeEntry extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? inc;
  final void Function()? dec;

  const TimeEntry({
    super.key,
    required this.title,
    required this.value,
    this.inc,
    this.dec,
  });

  @override
  Widget build(BuildContext context) {
    final PomodoroStore store = Provider.of(context);

    return Column(
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: store.isWorking() ? Colors.red : Colors.green,
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              '$value min',
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: inc,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: store.isWorking() ? Colors.red : Colors.green,
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
