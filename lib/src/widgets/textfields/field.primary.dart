import 'package:flutter/material.dart';

class FieldPrimary extends StatelessWidget {
  
  final String? hintText;
  final TextEditingController? controller;

  const FieldPrimary({super.key, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: hintText,
                  enabledBorder:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: const BorderSide(
                          color: Colors.black38,
                          width: 1
                        )
                      ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent, // Color del borde cuando está enfocado
                      width: 1.0,
                    ),
                  ),
                  ),
                  
            ),
          );
  }
}