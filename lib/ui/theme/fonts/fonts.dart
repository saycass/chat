import 'package:flutter/material.dart';

class FirstTitle extends StatelessWidget {
  final String title;

  const FirstTitle(
      this.title, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 35,
        decoration: TextDecoration.none,
        color: Colors.black,
      ),
    );
  }
}
class Caption extends StatelessWidget {
  final String title;

  const Caption(
      this.title, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 15,
        decoration: TextDecoration.none,
        color: Colors.black,
      ),
    );
  }
}