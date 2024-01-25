import 'package:flutter/material.dart';

class TitlePrimary extends StatelessWidget {
  
  final String data;
  
  const TitlePrimary(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(data, style: const TextStyle(fontSize: 48),));
  }
}