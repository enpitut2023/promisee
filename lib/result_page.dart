import 'dart:math';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final List<String> strings = [
    "ライン自動送信",
    "一発芸",
    "１０分間服を逆に着る",
    "SNSに自撮りを投稿",
  ];

  @override
  Widget build(BuildContext context) {
    final int minIndex = 0;
    final int maxIndex = strings.length - 1;

    final random = Random();
    final randomIndex = minIndex + random.nextInt(maxIndex - minIndex + 1);

    return Scaffold(
      appBar: AppBar(
        title: const Text('罰ゲーム'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.transparent), // デフォルトの戻るボタンを非表示に
          onPressed: () {},
        ),
        actions: [
          // "main.dartに戻る"ボタンを配置
          IconButton(
            icon: Icon(Icons.arrow_back), // 戻るアイコン
            onPressed: () {
              // ボタンが押されたときの処理
              Navigator.of(context).popUntil(ModalRoute.withName('/'));
              // ページを戻る
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          '罰ゲームは\n' + strings[randomIndex],
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
