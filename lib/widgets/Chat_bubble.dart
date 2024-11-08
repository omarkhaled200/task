import 'package:flutter/material.dart';

class Chatbubble extends StatelessWidget {
  const Chatbubble({
    super.key,
    required this.message,
  });

  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
                bottomRight: Radius.circular(32))),
        child: Text(
          message,
          style: const TextStyle(color: Colors.black, fontSize: 17),
        ),
      ),
    );
  }
}

class Chatbubbleforfreinds extends StatelessWidget {
  const Chatbubbleforfreinds({
    super.key, required this.message,
  });

  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green[300],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
                bottomLeft: Radius.circular(32))),
        child:  Text(
          message,
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
      ),
    );
  }
}
