import 'package:drift_tutorial/database/database.dart';
import 'package:flutter/material.dart';
import '../../HomeScreen/homeScreen.dart';
import '../../widgets/customTextField.dart';

class EditNote extends StatelessWidget {
  final TodoItem map;

  const EditNote({super.key, required this.map});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController(text: map.title);
    TextEditingController desc = TextEditingController(text: map.content);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomTextField(
            textEditingController: name,
            hint: "Edit Note Name",
            num: 1,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            textEditingController: desc,
            hint: 'Edit Note',
            num: 7,
          ),
          const Spacer(),
          MaterialButton(
              onPressed: () {
                // update(name.text, desc.text, map['id']);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                        (route) => false);
              },
              color: Colors.black,
              height: 50,
              elevation: 1,
              minWidth: MediaQuery.sizeOf(context).width * 0.8,
              child: const Text(
                'Add',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              )),
        ],
      ),
    );
  }
}