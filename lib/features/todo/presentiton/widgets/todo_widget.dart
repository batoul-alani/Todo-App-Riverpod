import 'package:flutter/material.dart';
import 'package:todo_app_riverpod/edit_todo.dart';
import 'package:todo_app_riverpod/features/todo/domain/todo.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;
  const TodoWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Text(todo.title),
          Text(todo.content),
          Text(todo.tasksCount.toString()),
        ],
      ),
    );
  }
}
