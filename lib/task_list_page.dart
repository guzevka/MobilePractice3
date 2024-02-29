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
    Task(title: 'Задача 3', description: 'Описание 3'),
    Task(title: 'Задача 4', description: 'Описание 4'),
    Task(title: 'Задача 5', description: 'Описание 5'),
    Task(title: 'Задача 6', description: 'Описание 6'),
    Task(title: 'Задача 7', description: 'Описание 7'),
    Task(title: 'Задача 8', description: 'Описание 8'),
    Task(title: 'Задача 9', description: 'Описание 9'),
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
    return IgnorePointer(
      ignoring: index.isOdd, // Disables every odd task
      child: ListTile(
        title: Text(
          tasks[index].title,
          style: TextStyle(
            color: index.isOdd ? Colors.grey : Colors.black, // Set light grey color for odd tasks
          ),
        ),
        subtitle: Text(
          tasks[index].description,
          style: TextStyle(
            color: index.isOdd ? Colors.grey : Colors.black, // Set light grey color for odd tasks
          ),
        ),
        trailing: IgnorePointer(
          ignoring: index.isOdd, // Disables every odd task
          child: IconButton(
            icon: Icon(Icons.arrow_forward),
            color: index.isOdd ? Colors.grey : Colors.black, // Set light grey color for odd tasks
            onPressed: () {
              if (!index.isOdd) { // Only navigate if the task is not odd
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskDetailPage(task: tasks[index]),
                  ),
                );
              }
            },
          ),
        ),
      ),
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
