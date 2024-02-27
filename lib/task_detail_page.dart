import 'package:flutter/material.dart';
import 'task.dart';

// Этот класс представляет виджет без сохранения состояния, 
//что означает, что он не поддерживает никакого состояния и является неизменяемым.
class TaskDetailPage extends StatelessWidget {
  final Task task;

  // Он принимает объект Task в качестве параметра в своем конструкторе.
  TaskDetailPage({required this.task});

  // Метод build определяет внешний вид виджета. Он создает каркас с панелью приложений и телом.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Описание:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(task.description),
            SizedBox(height: 20),
            Text(
              'Статус:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(task.isDone ? 'Выполнено' : 'Не выполнено'),
          ],
        ),
      ),
    );
  }
}
