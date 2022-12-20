import 'package:flutter/material.dart';

class TimeEntry extends StatelessWidget {
  final String title;
  final int value;

  const TimeEntry({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.red,
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.red,
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