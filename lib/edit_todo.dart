// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:todo_app_riverpod/features/todo/domain/todo.dart';
// import 'package:todo_app_riverpod/features/todo/presentiton/todo_controller.dart';

// class EditTodoData extends ConsumerWidget {
//   final Todo todo;
//   const EditTodoData({super.key, required this.todo});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text("Edit Todo"),
//       ),
//       body: Center(
//         child: TextButton(
//           onPressed: () {
//             ref.read(todoControllerProvider.notifier).changeTodo(todo);
//             // Navigator.pop(context);
//           },
//           child: const Text("change todo count to 5"),
//         ),
//       ),
//     );
//   }
// }
