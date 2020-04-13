import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wash App",
      home: Scaffold(
          backgroundColor: Color.fromRGBO(41, 182, 246, 5),
          body: Center(
            child: middleColumn,
          )),
    );
  }

  Widget middleColumn = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Image.asset("assets/images/symbol@3x.png"),
      const SizedBox(height: 15.3),
      ButtonTheme(
        height: 18.7,
        minWidth: 46.7,
        child: RaisedButton(
          onPressed: () {},
          color: Colors.white,
          padding: EdgeInsets.all(10.0),
          child: Text(
            '新規会員登録',
            style: TextStyle(color: Color.fromRGBO(41, 182, 246, 10)),
          ),
        ),
      ),
      const SizedBox(height: 8),
      new InkWell(
          onTap: () {},
          child: Text(
            'ログイン',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ))
    ],
  );
}
