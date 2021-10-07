import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final Function resetHandler;
  Results(this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('You did it !!'),
          FlatButton(onPressed: () => resetHandler(), child: Text('Restart'))
        ],
      ),
    );
  }
}
