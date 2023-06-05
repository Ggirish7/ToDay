import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todoey/widgets/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask({required String taskTitle}) {
    _tasks.add(
      Task(name: taskTitle),
    );
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
