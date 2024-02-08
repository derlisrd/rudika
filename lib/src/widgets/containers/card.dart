


import 'package:flutter/material.dart';

class Card extends StatelessWidget {

  final Widget child;
  const Card({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white60, 
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 2, color: Colors.white)
          ),
      width: double.infinity,
      child:child,
    );
  }
}
