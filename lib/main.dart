import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/task_screen.dart';
import 'package:todoey/themes.dart';
import 'package:todoey/widgets/task_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
        create: (_) => TaskData(),
        builder: (context, child) {
          return MaterialApp(
            home: const TaskScreen(),
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.system,
          );
        });
  }
}
