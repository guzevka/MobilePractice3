import 'package:flutter/material.dart';
import 'task.dart';

class NewTaskPage extends StatelessWidget {
  final Function(Task) onSave;

  NewTaskPage({required this.onSave});

  @override
  Widget build(BuildContext context) {
    String title = '';
    String description = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Добавить задачу'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Название задачи',
              ),
              onChanged: (value) {
                title = value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Описание задачи',
              ),
              onChanged: (value) {
                description = value;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Task newTask = Task(title: title, description: description);
                onSave(newTask); // Сохранение новой задачи
                Navigator.pop(context); // Закрыть страницу добавления задачи
              },
              child: Text('Сохранить'),
            ),
          ],
        ),
      ),
    );
  }
}