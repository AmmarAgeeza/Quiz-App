import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function fu;
  final int result;

  Result(this.fu, this.result);

  String get text {
    String d;
    if (result >= 30) {
      d = 'good';
    }
    else if (result >= 20) {
      d = 'GG';
    }
    else  {
      d = 'bad';
    }

    return d;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(onPressed: fu, child: Text("Restart"))
        ],
      ),
    );
  }
}
