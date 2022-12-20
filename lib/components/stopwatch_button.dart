import 'package:flutter/material.dart';

class StopwatchButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const StopwatchButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          textStyle: const TextStyle(fontSize: 25),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
