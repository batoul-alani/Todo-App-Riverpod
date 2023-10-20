import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app_riverpod/features/todo/presentiton/todo_controller.dart';

final myProvider = Provider((ref) {
  return "first provider on riverpod";
});

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final todosState = ref.watch(todoControllerProvider);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Today Tasks"),
        ),
        body: todosState.when(
            data: (data) {
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(data[index].title),
                        subtitle: Text(data[index].content),
                        trailing: Text(
                          data[index].tasksCount.toString(),
                        ),
                      ));
            },
            error: (error, st) => Text(error.toString()),
            loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                )));
  }
}
