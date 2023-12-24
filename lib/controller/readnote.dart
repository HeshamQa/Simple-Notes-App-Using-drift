import '../database/database.dart';
import '../main.dart';

Future<List<TodoItem>> read() async {
  List<TodoItem> response = await database.select(database.todoItems).get();
  return response;
}