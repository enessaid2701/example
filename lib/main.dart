import 'package:design/pages.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class User {
  String name;
  String surName;
  String age;
  String department;

  User({
    this.name,
    this.surName,
    this.age,
    this.department,
  });
}

void main() {
  runApp(MaterialApp(
    title: "Flutter Projesi",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  User user = User(
      name: 'enes',
      surName: 'altun',
      age: '20',
      department: 'computer engineer');
  User user1 = User(
      name: 'emre',
      surName: 'esen',
      age: '21',
      department: 'electrical engineer');
  User user2 = User(
      name: 'merve',
      surName: 'aydın',
      age: '25',
      department: 'industrial engineer');
  User user3 = User(
      name: 'hamza',
      surName: 'koç',
      age: '29',
      department: 'mechanical engineer');
  List<User> userList = List();

  @override
  void initState() {
    super.initState();
    userList.add(user);
    userList.add(user1);
    userList.add(user2);
    userList.add(user3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.login),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
        backgroundColor: Color(0xff329cc5),
        title: Center(
          child: Text(
            "Ana Sayfa",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Card(
        child: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('${userList.elementAt(index).name}'),
                  subtitle: Text('${userList.elementAt(index).department}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pages()),
                    );
                  },
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}