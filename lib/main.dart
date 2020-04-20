import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _PrivacyPage(),
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
                new Column(
                  children: <Widget>[
                    Image.asset("assets/images/symbol@2x.png"),
                    const SizedBox(height: 15.3),
                    ButtonTheme(
                      height: 18.7,
                      minWidth: 46.7,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            _buildInputSection(IconData(59516, fontFamily: 'MaterialIcons'),
                'お好きなニックネーム', TextInputType.text),
            _buildInputSection(IconData(57688, fontFamily: 'MaterialIcons'),
                'Eメールアドレス', TextInputType.emailAddress),
            _buildPassWordInputSection1(),
            _buildPassWordInputSection2(),
            // Date Column,
          ],
        ),
      ),
    );
  }

  Card _buildInputSection(IconData icon, String label, TextInputType type) {
    return Card(
      color: Color.fromRGBO(228, 228, 228, 100),
      child: Container(
        padding: EdgeInsets.all(6),
        child: Row(
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              child: Icon(
                icon,
              ),
            ),
            Container(
              height: 50,
              width: 230,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      label,
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    height: 25,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildPassWordInputSection1() {
    var myController = TextEditingController();
    var numOfCharacter = 0;
    _countLetter() {
      setState(
        () {
          numOfCharacter = myController.text.length;
          print("$numOfCharacter");
        },
      );
    }

    myController.addListener(_countLetter);
    return Container(
      padding: EdgeInsets.all(6),
      child: Column(
        children: [
          Card(
            color: Color.fromRGBO(228, 228, 228, 100),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(6),
                  height: 40,
                  width: 40,
                  child: Icon(
                    IconData(59543, fontFamily: 'MaterialIcons'),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'パスワード',
                        ),
                      ),
                      Container(
                        height: 25,
                        child: TextField(
                          obscureText: true,
                          controller: myController,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "$numOfCharacter/20",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildPassWordInputSection2() {
    var myController = TextEditingController();
    var numOfCharacter = 0;
    _countLetter() {
      setState(
        () {
          numOfCharacter = myController.text.length;
          print("$numOfCharacter");
        },
      );
    }

    myController.addListener(_countLetter);
    return Container(
      padding: EdgeInsets.all(6),
      child: Column(
        children: [
          Card(
            color: Color.fromRGBO(228, 228, 228, 100),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(6),
                  height: 40,
                  width: 40,
                  child: Icon(
                    IconData(59543, fontFamily: 'MaterialIcons'),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'パスワード',
                        ),
                      ),
                      Container(
                        height: 25,
                        child: TextField(
                          obscureText: true,
                          controller: myController,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "$numOfCharacter/20",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserGuidePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserGuidePageState();
}

class _UserGuidePageState extends State<UserGuidePage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: guidePageAppBar,
      body: Builder(
        builder: (BuildContext context) {
          return WebView(
            initialUrl:
                "http://mk-app-alb-2000266141.ap-northeast-1.elb.amazonaws.com/user-guide",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
          );
        },
      ),
    );
  }

  Widget guidePageAppBar = AppBar(
    backgroundColor: Color.fromRGBO(250, 250, 250, 100),
    leading: Text(''),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          IconData(58837, fontFamily: 'MaterialIcons'),
        ),
        onPressed: () {},
      ),
    ],
  );
}
class _PrivacyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PrivacyPageState();

}

class _PrivacyPageState extends State<_PrivacyPage>{
  final Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: guidePageAppBar,
      body: Builder(
        builder: (BuildContext context) {
          return WebView(
            initialUrl:
            "http://mk-app-alb-2000266141.ap-northeast-1.elb.amazonaws.com/privacy-policy",
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
          );
        },
      ),
    );
  }
  Widget guidePageAppBar = AppBar(
    backgroundColor: Color.fromRGBO(250, 250, 250, 100),
    leading: Text(''),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          IconData(58837, fontFamily: 'MaterialIcons'),
        ),
        onPressed: () {},
      ),
    ],
  );
  }
