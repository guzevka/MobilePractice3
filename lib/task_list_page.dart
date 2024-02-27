import 'package:flutter/material.dart';
import 'task.dart';
import 'task_detail_page.dart';
import 'new_task_page.dart';

class TaskListPage extends StatefulWidget {
  @override
  _TaskListPageState createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<Task> tasks = [
    Task(title: 'Задача 1', description: 'Описание 1'),
    Task(title: 'Задача 2', description: 'Описание 2'),
    // Добавьте больше задач по аналогии
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Задачи'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].title),
            subtitle: Text(tasks[index].description),
            trailing: Checkbox(
              value: tasks[index].isDone,
              onChanged: (bool? value) {
                setState(() {
                  tasks[index].isDone = value!;
                });
              },
            ),
            onTap: () {
              // Навигация на страницу подробной информации о задаче
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailPage(task: tasks[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToNewTaskPage(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _navigateToNewTaskPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewTaskPage(onSave: _addTaskToList),
      ),
    );
  }

  void _addTaskToList(Task newTask) {
    setState(() {
      tasks.add(newTask);
    });
  }
}
