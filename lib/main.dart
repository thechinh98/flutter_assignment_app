import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
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

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          padding: EdgeInsets.all(8),
          children: <Widget>[
            _buildInputSection(IconData(59516, fontFamily: 'MaterialIcons'),
                'お好きなニックネーム', TextInputType.text, false),
            _buildInputSection(IconData(57688, fontFamily: 'MaterialIcons'),
                'Eメールアドレス', TextInputType.emailAddress, false),
            _buildInputSection(IconData(59543, fontFamily: 'MaterialIcons'),
                'パスワード', TextInputType.text, true),
            _buildInputSection(IconData(59543, fontFamily: 'MaterialIcons'),
                'パスワード', TextInputType.text, true)
          ],
        ),
      ),
    );
  }

  Card _buildInputSection(
      IconData icon, String label, TextInputType type, bool checkPass) {
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
                height: 80,
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
                      child: TextField(
                      obscureText: checkPass,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
