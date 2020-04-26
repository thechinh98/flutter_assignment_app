import 'dart:async';

import 'package:custom_radio_button/custom_radio_button.dart';
import 'package:custom_radio_button/radio_model.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
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
  static List<String> list = ['既婚', '未婚'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: registerPageAppBar(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            _buildInputSection(IconData(59516, fontFamily: 'MaterialIcons'),
                'お好きなニックネーム', TextInputType.text),
            SizedBox(
              height: 10,
            ),
            _buildInputSection(IconData(57688, fontFamily: 'MaterialIcons'),
                'Eメールアドレス', TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            _buildPassWordInputSection(),
            SizedBox(
              height: 10,
            ),
            _buildPassWordInputSection(),
            SizedBox(
              height: 10,
            ),
            _birthdayInputSection(),
            SizedBox(
              height: 10,
            ),
            _addressInputSection,
            SizedBox(
              height: 10,
            ),
            Text('既婚/未婚'),
            _marriedStatusSection,
            SizedBox(
              height: 10,
            ),
            Text('性別'),
            _genderRadioButtonSection,
            SizedBox(
              height: 10,
            ),
            Text('職業'),
            _occupationInputSection(),
            SizedBox(
              height: 10,
            ),
            _privacyCheckBox(),
            SizedBox(
              height: 10,
            ),
            _checkButton
            // Date Column,
          ],
        ),
      ),
    );
  }

  Container _buildInputSection(
      IconData icon, String label, TextInputType type) {
    return Container(
      height: 60,
      color: Color.fromRGBO(228, 228, 228, 100),
      padding: EdgeInsets.only(left: 6, top: 6, right: 6),
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                labelText: label,
                prefixIcon: Icon(icon),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int _numOfLetter = 0;

  Container _buildPassWordInputSection() {
    _countLetter(String value) {
      setState(
        () {
          _numOfLetter = value.length;
          print(_numOfLetter);
        },
      );
    }

    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 6, top: 6, right: 6),
            height: 60,
            color: Color.fromRGBO(228, 228, 228, 100),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(IconData(59543, fontFamily: 'MaterialIcons')),
                      labelText: 'パスワード',
                    ),
                    obscureText: true,
                    onChanged: _countLetter,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              _numOfLetter.toString() + "/20",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _birthdayInputSection() {
    var textEditingController = TextEditingController();
    var maskTextInputFormatter = MaskTextInputFormatter(
        mask: "####/##/##", filter: {"#": RegExp(r'^[0-9]')});

    return Container(
      color: Color.fromRGBO(228, 228, 228, 100),
      height: 60,
      padding: EdgeInsets.only(left: 6, top: 6, right: 6),
      child: Column(
        children: [
          Expanded(
            child: TextField(
              controller: textEditingController,
              inputFormatters: [maskTextInputFormatter],
              decoration: InputDecoration(
                labelText: '生年月日',
                prefixIcon: Icon(
                  IconData(59369, fontFamily: 'MaterialIcons'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _addressInputSection = Container(
    color: Color.fromRGBO(228, 228, 228, 100),
    padding: EdgeInsets.only(left: 6, right: 6),
    height: 60,
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: '事業者コードを追加',
              prefixIcon: Icon(
                IconData(59530, fontFamily: 'MaterialIcons'),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
          child: Container(color: Colors.white),
        ),
        Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              IconData(59645,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
            ),
          ),
        ),
      ],
    ),
  );

  Container _marriedStatusSection = Container(
    color: Color.fromRGBO(228, 228, 228, 100),
    height: 40,
    padding: EdgeInsets.only(left: 6, top: 6, right: 6),
    child: Column(
      children: <Widget>[
//        Row(
//          children: <Widget>[
//            Expanded(
//              child: RadioListTile(
//
//              )
//            ),
//            SizedBox(width: 5),
//            Expanded(
//
//            )
//          ],
//        ),
      ],
    ),
  );
  Container _genderRadioButtonSection = Container(
    color: Color.fromRGBO(228, 228, 228, 100),
    height: 40,
    padding: EdgeInsets.only(left: 6, top: 6, right: 6),
    child: Column(
      children: [],
    ),
  );
  String dropdownValue = 'One';

  Container _occupationInputSection() {
    List<String> spinnerItems = ['One', 'Two'];
    _changeDropDownValue(String value) {
      setState(() {
        dropdownValue = value;
      });
    }

    return Container(
      color: Color.fromRGBO(228, 228, 228, 100),
      height: 40,
      padding: EdgeInsets.only(left: 6, top: 6, right: 6),
      child: Column(
        children: <Widget>[
          Expanded(
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              isExpanded: true,
              hint: Text('選択してください'),
              onChanged: (String data) {
                _changeDropDownValue(data);
                print(dropdownValue);
              },
              items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
  bool checkBoxValue = false;

  Container _privacyCheckBox() {
    _setValue(bool value) {
      setState(() {
        checkBoxValue = value;
      });
    }

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: Color.fromRGBO(3, 155, 229, 100),
            ),
            child: Checkbox(
              value: checkBoxValue,
              onChanged: (bool value) {
                _setValue(value);
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserGuidePage(),
                ),
              );
            },
            child: Text(
              '利用規約',
              style: TextStyle(
                fontSize: 12,
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(3, 155, 229, 100),
              ),
            ),
          ),
          Text(
            ', ',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => _PrivacyPage()),
              );
            },
            child: Text(
              '個人情報保護方針',
              style: TextStyle(
                fontSize: 12,
                decoration: TextDecoration.underline,
                color: Color.fromRGBO(3, 155, 229, 100),
              ),
            ),
          ),
          Text(
            '個人情報保護方針',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Container _checkButton = Container(
      child: Row(
    children: <Widget>[
      Expanded(
          child: RaisedButton(
        child: Text('確認する'),
        onPressed: () {},
      ))
    ],
  ));

  AppBar registerPageAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(IconData(58848,
            fontFamily: 'MaterialIcons', matchTextDirection: true)),
        iconSize: 15,
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        '新規会員登録',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
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
      appBar: userGuidePageAppBar(),
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

  AppBar userGuidePageAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(IconData(57676, fontFamily: 'MaterialIcons')),
        iconSize: 15,
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        '利用規約',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
}

class _PrivacyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<_PrivacyPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: privacyPageAppBar(),
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

  Widget privacyPageAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(IconData(57676, fontFamily: 'MaterialIcons')),
        iconSize: 15,
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        '個人情報保護方針',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
}
