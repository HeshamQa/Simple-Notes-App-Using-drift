import 'package:drift/drift.dart' as drift;
import 'package:drift_tutorial/database/database.dart';
import 'package:flutter/material.dart';

import 'components/addNote.dart';
import 'components/body.dart';
import 'components/floatingButton.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   final database = AppDatabase();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(' HOME SCREEN'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             MaterialButton(
//               color: Colors.red,
//               onPressed: () async {
//                 await database.into(database.todoItems).insert(
//                     TodoItemsCompanion.insert(
//                         title: 'first to do', content: 'i have to go'));
//               },
//               child: const Text('insert'),
//             ),
//             MaterialButton(
//               color: Colors.blue,
//               onPressed: () async {
//                 await database
//                     .update(database.todoItems)
//                     .replace(const TodoItemsCompanion(
//                       id: drift.Value(4),
//                       content: drift.Value('Updated'),
//                       title: drift.Value('updated'),
//                     ));
//               },
//               child: const Text('update'),
//             ),
//             MaterialButton(
//               color: Colors.green,
//               onPressed: () async {
//                 List<TodoItem> allItems =
//                     await database.select(database.todoItems).get();
//                 print('items in database: $allItems');
//               },
//               child: const Text('read'),
//             ),
//             MaterialButton(
//               color: Colors.yellowAccent,
//               onPressed: () async {
//                 TodoItem? itemDeleted =  await database.delete(database.todoItems).deleteReturning(const TodoItemsCompanion(id: drift.Value(3)));
//                 print('the deleted item is :  $itemDeleted');
//               },
//               child: const Text('delete'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
      const FloatingButton(icon: Icons.add, widget: AddNoteScreen()),
      appBar: AppBar(
        title: const Text(
          'My Notes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFF2A2A2A),
      body: const Padding(padding: EdgeInsets.only(top: 10), child: Body()),
    );
  }
}