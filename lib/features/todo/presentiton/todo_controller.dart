import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_app_riverpod/features/todo/data/todo_repository.dart';
import 'package:todo_app_riverpod/features/todo/domain/todo.dart';

part 'todo_controller.g.dart';

@riverpod
class TodoController extends _$TodoController {
  @override
  FutureOr<List<Todo>> build() {
    return ref.watch(todoRepositoryProvider).getTodos();
  }
}
