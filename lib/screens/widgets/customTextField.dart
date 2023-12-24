import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hint;
  final int num;
  const CustomTextField({super.key, required this.textEditingController,required this.hint, required this.num});

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: textEditingController,
      style: const TextStyle(color: Colors.white,fontSize: 15),
      maxLines: num,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontWeight: FontWeight.normal,color: Colors.white,fontSize: 16,fontFamily: 'Inter',),
      ),
    );
  }
}