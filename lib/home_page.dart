import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  String? localTitle;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(localTitle ?? ''),
        leading: IconButton(
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
