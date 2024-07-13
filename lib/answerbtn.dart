import 'package:flutter/material.dart';

class Answerbtn extends StatelessWidget {
  const Answerbtn({required this.text, required this.onTap, super.key});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor:const Color.fromARGB(255, 43, 3, 220),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 40)
          ),
        
      child: Text(text,textAlign: TextAlign.center,),
    );
  }
}
