import 'package:flutter/material.dart';
import 'task.dart';

// NewTaskPage - StatelessWidget => он не изменяет свое состояние во время выполнения
class NewTaskPage extends StatelessWidget {
  final Function(Task) onSave;

  // В конструкторе NewTaskPage принимается функция onSave, которая будет вызываться 
  //для сохранения новой задачи.
  NewTaskPage({required this.onSave});

  // Метод build определяет, как будет выглядеть виджет страницы для добавления новой задачи.
  @override
  Widget build(BuildContext context) {
    String title = '';
    String description = '';

  // Внутри Scaffold создается основная структура страницы, включая заголовок и тело.
    return Scaffold(
      appBar: AppBar(
        title: Text('Добавить задачу'),
      ),
      // Внутри body используется Padding и Column для размещения текстовых полей (TextField) 
      // для ввода названия и описания задачи.
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
            // Также присутствует кнопка (ElevatedButton), при нажатии на которую создается новый объект 
            //Task с введенными данными, и вызывается функция onSave для сохранения задачи. После этого 
            //происходит закрытие страницы добавления задачи.
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