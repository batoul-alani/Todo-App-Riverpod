class Todo {
  final int index;
  final String title;
  final String content;
  final int tasksCount;

  Todo({required this.index, required this.title, required this.content, required this.tasksCount});

  Todo copyWith(int? tasksCount) => Todo(
      index: index,
      title: title,
      content: content,
      tasksCount: tasksCount ?? this.tasksCount);

  @override
  String toString() {
    return "Todo{index: $index, title: $title, content: $content, tasksCount: $tasksCount}";
  }
}
