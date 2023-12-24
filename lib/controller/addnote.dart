import '../database/database.dart';
import '../main.dart';

void insert(String name,String desc) async {
  await database.into(database.todoItems).insert(TodoItemsCompanion.insert(content: desc, title: name));
}