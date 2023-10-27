import 'penalty.dart';


class JudgePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: Text('Promisee'),
      ),
      // データを元にListViewを作成
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PenaltyPage()),
              );
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
    );
  }
}