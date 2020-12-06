import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "example",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.orange),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            "user",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Pages(),
    ),
  ));
}

class Pages extends StatefulWidget {
  @override
  PagesState createState() => PagesState();
}

class PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gidilen Sayfa'),
          backgroundColor: Color(0xff329cc5),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Yusuf Altun",
                  ),
                ),
                Divider(
                  color: Colors.black,
                )
              ],
            ),
          ),
        ));
  }
}