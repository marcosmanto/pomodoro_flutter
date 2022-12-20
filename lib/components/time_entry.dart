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
        Text(title),
        Text(value.toString()),
      ],
    );
  }
}
