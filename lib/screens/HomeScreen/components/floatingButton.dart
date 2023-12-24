import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  final IconData icon;
  final Widget widget;
  const FloatingButton({super.key, required this.icon, required this.widget});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){
      showModalBottomSheet(backgroundColor: const Color(0xFF1F1F1F),context: context, builder: (context) => widget,);
    },child: Icon(icon,size: 30),);
  }
}