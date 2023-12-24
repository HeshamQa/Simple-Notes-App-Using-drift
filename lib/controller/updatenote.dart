import 'package:drift/drift.dart';

import '../database/database.dart';
import '../main.dart';
void update(String name, String desc, int id) async {
  await database.update(database.todoItems).replace(TodoItemsCompanion(
        id: Value(id),
        content: Value(desc),
        title: Value(name),
      ));
}
