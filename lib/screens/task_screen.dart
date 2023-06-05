import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/new_task.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/widgets/task_data.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 10,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const NewTaskScreen(),
          );
        },
        child: Icon(
          Icons.add,
          size: 40,
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(left: 45, top: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.secondaryContainer,
                        radius: 35.0,
                        child: Icon(
                          Icons.list,
                          size: 50,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "ToDay",
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Text(
                        Provider.of<TaskData>(context).tasks.isEmpty
                            ? "No Tasks"
                            : "${Provider.of<TaskData>(context).taskCount} Tasks",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 20,
                        ),
                      )
                    ]),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(left: 45, top: 40, right: 45),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Material(
                    color: Theme.of(context).colorScheme.secondary,
                    child: const TaskList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
