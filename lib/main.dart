import 'screens/login.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/members.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family Intro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Family Intro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedNaviIndex = 0;      // _selectedNaviIndex 변수 정의와 이벤트 핸들러 시작

  _onBottomNavigationItemTapped(index) {
    setState(() {
      _selectedNaviIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double imageWidth = (deviceWidth - 30) / 4;

    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
              widget.title,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                fontFamily: 'Dongle',
                color: Colors.white,
              ),
          ),
          actions: [
            // actions로 logout 아이콘이 추가되고
            IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  // 클릭하면 Login 페이지로 이동함
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => LoginPage()));
                }),
          ]),
      body: [
        Home(),
        Members()
      ][_selectedNaviIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBottomNavigationItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.family_restroom, color: Colors.blue),
            label: "Members",
          ),
        ],
      ),
    );
  }
}
