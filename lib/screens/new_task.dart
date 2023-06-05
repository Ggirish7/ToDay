import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_data.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String newTaskText;
    return Container(
      color: const Color.fromRGBO(117, 117, 117, 1.0),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "Add Task",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              color: Theme.of(context).colorScheme.primary,
            ),
            onChanged: (newTask) {
              newTaskText = newTask;
            },
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(taskTitle: newTaskText);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                "ADD",
                style: TextStyle(
                  fontSize: 19,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
