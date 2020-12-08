import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

// ignore: missing_return
Widget buildTextField({
  Widget icon,
  Widget suffixIcon,
  double fontSize,
  TextEditingController controller,
  bool obscureText,
  String hintText,
  Function validator,
  Color color,
  FocusNode focusNode,
}) {}

class _LoginState extends State<Login> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  FocusNode myFocusNode;

  @override
  void initState() {
    myFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 0.05,
              right: 0.03,
              left: 0.03,
              bottom: 0.02,
            ),
            child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: <Widget>[
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Text(
                        'Login Screen',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff30475e),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Color(0xfff7f7f7),
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                              child: TextField(
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 2.0)),
                                    border: OutlineInputBorder(),
                                    labelText: 'Kullanıcı Adı',
                                    labelStyle: TextStyle(
                                        color: Colors.black87, fontSize: 18.0)),
                              ),
                            ),
                            SizedBox(
                              height: 0.03,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                              child: TextField(
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 2.0)),
                                    border: OutlineInputBorder(),
                                    labelText: 'Şifre',
                                    labelStyle: TextStyle(
                                        color: Colors.black87, fontSize: 18.0)),
                                obscureText: true,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RaisedButton(
                              shape: StadiumBorder(),
                              elevation: 12,
                              child: Container(
                                width: 150,
                                height: 45,
                                child: Center(
                                  child: Text(
                                    "Giriş Yap",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                ),
                              ),
                              color: Color(0xfff7f7f7),
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Şifremi Unuttum",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Icon(Icons.settings)
                          ],
                        ),
                      ),
                    ),
                  ]),
                ]),
          ),
        ));
  }
}