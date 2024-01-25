import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const PrimaryButton({super.key,required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          )
        ),
        child:  Text(text, style: const TextStyle(color: Colors.white, fontSize: 18),),
      ),
    );
  }
}