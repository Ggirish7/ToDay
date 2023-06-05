import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkBoxCallBack;

  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkBoxCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).colorScheme.secondaryContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          color: Theme.of(context).colorScheme.primaryContainer,
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack,
        activeColor: Theme.of(context).colorScheme.primary,
        focusColor: Colors.black,
      ),
    );
  }
}
