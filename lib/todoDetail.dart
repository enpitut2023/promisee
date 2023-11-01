import 'package:flutter/material.dart';
import 'penalty.dart';

class TodoDetailPage extends StatelessWidget {
  final String todoItem;

  TodoDetailPage(this.todoItem);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('約束の詳細'),
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
            TextButton(
              onPressed: () {
                // "pop"で前の画面に戻る
                Navigator.of(context).pop();
              },
              child: Text('成功'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PenaltyPage()),
                );
              },
              child: Text('失敗'),
            ),
          ],
        ),
      ),
    );
  }
}
