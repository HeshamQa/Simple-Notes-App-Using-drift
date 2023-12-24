import 'package:drift/drift.dart';

import '../database/database.dart';
import '../main.dart';

Future<TodoItem> delete(int id) async {
  TodoItem? response =  await database.delete(database.todoItems).deleteReturning(TodoItemsCompanion(id: Value(id)));
  return response!;
}