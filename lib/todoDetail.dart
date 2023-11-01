import 'package:flutter/material.dart';

class TodoDetailPage extends StatelessWidget {
  final String todoItem;

  TodoDetailPage(this.todoItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todoの詳細'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Todoの詳細情報:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              todoItem,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
