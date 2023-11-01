import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roulette/roulette.dart';
import 'result_page.dart';



class RoulettePage extends StatefulWidget {
  const RoulettePage({Key? key}) : super(key: key);

  @override
  State<RoulettePage> createState() => _RoulettePageState();
}

class _RoulettePageState extends State<RoulettePage> with SingleTickerProviderStateMixin {

  late RouletteController _controller;

  @override
  void initState() {
    final values=<String>["ライン自動送信","一発芸","１０分間服を逆に着る","SNSに自撮りを投稿"];

    // Build uniformed group
    final group = RouletteGroup.uniform(
    values.length,
    colorBuilder: (index) => Colors.blue,
    textBuilder: (index) => values[index],
    textStyleBuilder: (index) {
    // Customize text style, don't forget to return it
    },
    );
    //ルーレットコントローラ
    _controller = RouletteController(
        group:group,
        vsync: this
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('罰ゲーム'),
      ),
      body:
      SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: 260,
                height: 260,
                //ルーレットウィジェット
                child: Roulette(
                  controller: _controller,
                  style: const RouletteStyle(
                    centerStickerColor: Colors.brown,//中心の丸の色
                    dividerThickness: 4,//仕切りの厚さ
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () async {
                  //コントローラ動かす
                  await _controller.rollTo( 1,
                    clockwise: true,//時計回り
                    offset: Random().nextDouble(),//最終位置の設定
                  );
                  //結果（チョコ）画面へ遷移
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ResultPage(),
                      ));
                } ,
                child: const Text("受け取ってね！",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}