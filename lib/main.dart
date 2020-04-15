import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(41, 182, 246, 100),
                Color.fromRGBO(0, 128, 203, 100)
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                middleColumn,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget middleColumn = Column(
    children: <Widget>[
      Image.asset("assets/images/symbol@2x.png"),
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
            style: TextStyle(
              fontFamily: 'NotoSans',
              color: Color.fromRGBO(41, 182, 246, 10),
            ),
          ),
        ),
      ),
      const SizedBox(height: 8),
      new InkWell(
          onTap: () {},
          child: Text(
            'ログイン',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ))
    ],
  );
}
