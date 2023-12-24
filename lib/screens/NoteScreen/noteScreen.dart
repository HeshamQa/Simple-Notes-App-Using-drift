import 'package:flutter/material.dart';

import '../../database/database.dart';
import '../HomeScreen/components/floatingButton.dart';
import 'components/editNote.dart';
import 'components/noteBody.dart';

class NoteScreen extends StatelessWidget{
  final TodoItem snap;
  const NoteScreen({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingButton(icon: Icons.edit, widget: EditNote(map: snap)),
        appBar: AppBar(
          title: const Text('My Notes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: const Color(0xFF2A2A2A),
        body: NoteBody(snap: snap)
    );
  }
}