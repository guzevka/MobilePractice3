import 'package:flutter/material.dart';

// HomePage является StatefulWidget, что означает, что он может изменять свое состояние во время выполнения.
class HomePage extends StatefulWidget {
  // В конструкторе HomePage принимается строковый параметр title, который используется 
  //для установки заголовка страницы.
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  String? localTitle;

  // В методе initState происходит инициализация 
  //переменной localTitle путем объединения переданного заголовка (widget.title) с дополнительной строкой.
  @override
  void initState() {
    localTitle = widget.title + ' 222';

    super.initState();
  }

  onPressed() {
    // какой то код

    if (mounted)
      setState(() {
        counter += 1;
      });
  }

  // Метод build определяет, как будет выглядеть виджет главной страницы.
  @override
  Widget build(BuildContext context) {
    // Внутри Scaffold создается основная структура страницы, 
    //включая заголовок, кнопки в верхней панели (leading и actions) и тело страницы.
    return Scaffold(
      appBar: AppBar(
        title: Text(localTitle ?? ''),
        leading: IconButton(
          // Метод onPressed представляет собой какой-то код, 
          //который не предоставлен в данном фрагменте. В текущем состоянии он пустой.
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          )
        ],
      ),
      // В теле страницы используется Center и Column для размещения текстового виджета, 
      //контейнера счетчика и иконки, на которую можно нажать для увеличения счетчика.
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.title),
          Container(padding: EdgeInsets.all(16), child: Text('$counter')),
          GestureDetector(
            onTap: () {
              setState(() {
                counter += 1;
              });
            },
            onDoubleTap: () {
              setState(() {
                counter += 4;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      )),
    );
  }
}
