

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app_riverpod/features/todo/domain/todo.dart';

part 'todo_repository.g.dart';

@riverpod
TodoRepository todoRepository(TodoRepositoryRef ref) {
  return TodoRepository();
}

class TodoRepository{
  List<Todo> getTodos() {
    return [
      Todo(index: 0, title: "Housework", content: "Cleaning, Washing", tasksCount: 2),
      Todo(index: 1, title: "Work", content: "Project x", tasksCount: 1),
      Todo(index: 2, title: "Sport", content: "Ayrobic, Zoomba, Stretching", tasksCount: 3),
    ];
  }
}