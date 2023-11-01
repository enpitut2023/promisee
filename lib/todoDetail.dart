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
              '約束の詳細情報:',
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
              child: Text('約束を守れた！'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoulettePage()),
                );
              },
              child: Text('約束を守れなかった...'),
            ),
          ],
        ),
      ),
    );
  }
}
