import 'package:flutter/material.dart';

Widget scrollShape(String text) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(24),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 28),
    margin: const EdgeInsets.symmetric(horizontal: 16),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
