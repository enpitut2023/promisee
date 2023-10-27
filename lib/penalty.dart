import 'package:flutter/material.dart';

class PenaltyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penalty'),
      ),
      body: Container(
        child: Center(
          child: Text(
              'ペナルティー',
            style: TextStyle(
            fontSize: 40,
          ),

          ),

        )
      ),
    );
  }
}