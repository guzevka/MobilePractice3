import 'package:flutter/material.dart';
import 'task.dart';
import 'task_detail_page.dart';
import 'new_task_page.dart';

// TaskListPage - StatefulWidget => может изменять свое состояние во время выполнения
class TaskListPage extends StatefulWidget {
  @override
  _TaskListPageState createState() => _TaskListPageState();
}

//Список задач, который есть изначально (объекты типа Task)
class _TaskListPageState extends State<TaskListPage> {
  List<Task> tasks = [
    Task(title: 'Задача 1', description: 'Описание 1'),
    Task(title: 'Задача 2', description: 'Описание 2'),
    // Добавьте больше задач по аналогии
  ];

// метод build - определяет, как будет выглядеть виджет страницы списка задач
// Scaffold - для создания основной структуры страницы (с заголовком и телом)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Задачи'),
      ),
      /// ListView.builder - для отображения списка задач,
      /// каждая задача - в виде ListTile (заголовок, описание, флажок для отметки)
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
              // при нажатии на нее происходит навигация на страницу с информацией о задаче (TaskDetailPage)
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
      
      // floatingActionButton - плавающая кнопка действия, позволяет добавлять новые задачи
      // при нажатии на нее происходит навигация на страницу для ввода новой задачи (NewTaskPage)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToNewTaskPage(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

// Метод для открытия страницы для ввода новой задачи
  void _navigateToNewTaskPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewTaskPage(onSave: _addTaskToList),
      ),
    );
  }

// Метод для добавления новой задачи в список
  void _addTaskToList(Task newTask) {
    setState(() {
      tasks.add(newTask);
    });
  }
}
