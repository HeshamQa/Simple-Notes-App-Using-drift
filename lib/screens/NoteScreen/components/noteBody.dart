import 'package:drift_tutorial/database/database.dart';
import 'package:flutter/material.dart';

class NoteBody extends StatelessWidget {
  final TodoItem snap;
  const NoteBody({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(snap.title,style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Text(snap.content,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 19,color: Colors.white)),
        ],
      ),
    );
  }
}