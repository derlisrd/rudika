import 'package:flutter/material.dart';


class SecondaryButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const SecondaryButton({super.key,required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1
        ),
        borderRadius: BorderRadius.circular(4)
      ),
      margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          )
        ),
        child:  Text(text, style: const TextStyle(color: Colors.black, fontSize: 18),),
      ),
    );
  }
}