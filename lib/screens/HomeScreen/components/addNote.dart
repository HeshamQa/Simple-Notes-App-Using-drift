import 'package:flutter/material.dart';

import '../../../controller/addnote.dart';
import '../../widgets/customTextField.dart';
import '../homeScreen.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController desc = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomTextField(
            textEditingController: name,
            hint: "Add Note Name",
            num: 1,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            textEditingController: desc,
            hint: 'Add Note',
            num: 7,
          ),
          const Spacer(),
          MaterialButton(
              onPressed: () {
                insert(name.text, desc.text);
                name.clear();
                desc.clear();
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen(),), (route) => false);
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