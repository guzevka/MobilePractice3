import 'package:flutter/material.dart';
import 'task_list_page.dart'; 

void main() {
  runApp(MyApp());
}

// MyApp - StatelessWidget => он не изменяет свое состояние во время выполнения
class MyApp extends StatelessWidget {
  @override
  // метод build определяет, как будет выглядеть виджет приложения.
  // исп-ся MaterialApp для создания основной структуры приложения
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Список задач',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          TaskListPage(), // установка TaskListPage в качестве домашней страницы
    );
  }
}
