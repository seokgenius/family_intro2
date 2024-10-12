import 'package:flutter/material.dart';
import '../main.dart';

class ThirdDetail extends StatelessWidget {
  const ThirdDetail({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          "Third Family",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            fontFamily: 'Dongle',
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: '')),
                      (_) => false, // 스택에 들어있는 이전 라우트를 제거하면서 이동
                );
              },
              icon: Icon(Icons.home_outlined)
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.greenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
                tag: 'third-family',
                child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1661475916373-5aaaeb4a5393?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  width: deviceWidth,
                ),
            ),
            const Text(
              "세번째 구성원",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Dongle',
                fontWeight: FontWeight.w600,
                color: Colors.pink,
                backgroundColor: Colors.yellow,
              ),
              overflow: TextOverflow.clip,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                '구성원 소개입니다.구성원 소개입니다.구성원 소개입니다.구성원 소개입니다.구성원 소개입니다.구성원 소개입니다.구성원 소개입니다.',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Dongle',
                  fontWeight: FontWeight.w400,
                  color: Colors.pink,
                ),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
