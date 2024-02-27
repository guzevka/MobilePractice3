import 'package:flutter/material.dart';
import 'task_list_page.dart'; // Импортируйте файл с вашим списком задач

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Список задач',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          TaskListPage(), // Установите TaskListPage в качестве домашней страницы
    );
  }
}
