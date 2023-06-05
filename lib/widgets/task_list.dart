import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            var task = taskData.tasks[index];
            return Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                taskData.deleteTask(task);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 1500),
                    content: Text('${task.name} dismissed'),
                  ),
                );
              },
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 30),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              secondaryBackground: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 30),
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(bottom: 5.0),
                child: TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkBoxCallBack: (checkboxState) {
                    taskData.updateTask(task);
                  },
                ),
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
