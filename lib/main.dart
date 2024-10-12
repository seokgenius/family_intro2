import 'package:flutter/material.dart';
import 'screens/detail_1.dart';
import 'screens/detail_2.dart';
import 'screens/detail_3.dart';
import 'screens/detail_4.dart';

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
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double imageWidth = (deviceWidth - 30) / 4;

    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
            "Family Intro",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              fontFamily: 'Dongle',
              color: Colors.white,
            ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // 가족 사진 영역
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: double.infinity,
              color: Colors.orange,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent, width: 5),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Image.network("https://loremflickr.com/320/240/dog", height: 150,),
                  ),
                  const Text('가족사진',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Dongle',
                        color: Colors.yellow,
                      )
                  ),
                ],
              ),
            ),

            // 구성원 개인 사진 영역
            Container(
              color: Colors.lightGreen,
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Hero(
                          tag: 'first-family',
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green, width: 5),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => FirstDetail())
                                );
                              },
                              icon: Image.network("https://loremflickr.com/320/240/paris,girl/all"),
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(
                                  maxWidth: deviceWidth / 2 - 20
                              ),
                            ),
                          ),
                        ),

                        Hero(
                            tag: 'second-family',
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.green, width: 5),
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SecondDetail())
                                  );
                                },
                                icon: Image.network("https://loremflickr.com/320/240/paris,girl/all"),
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(
                                    maxWidth: deviceWidth / 2 - 20
                                ),
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Hero(
                          tag: 'third-family',
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green, width: 5),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ThirdDetail())
                                );
                              },
                              icon: Image.network("https://loremflickr.com/320/240/paris,girl/all"),
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(
                                  maxWidth: deviceWidth / 2 - 20
                              ),
                            ),
                          ),
                        ),

                        Hero(
                          tag: 'fourth-family',
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green, width: 5),
                                borderRadius: BorderRadius.circular(4)
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => FourthDetail())
                                );
                              },
                              icon: Image.network("https://loremflickr.com/320/240/paris,girl/all"),
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(
                                  maxWidth: deviceWidth / 2 - 20
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text('구성원별 개인사진 (클릭시 상세)',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Dongle',
                      color: Colors.amberAccent,
                    ),
                  ),
                ],
              )
            ),

            // 반려 동물 사진 영역
            Container(
              margin: const EdgeInsets.only(top: 10),
              alignment: Alignment.centerLeft,
              color: Colors.lightBlueAccent,
              child: Row(
                children: [
                  // 사진 영역 (+ 내부 텍스트)
                  Stack(
                    children: [
                      Image.network("https://picsum.photos/id/237/200/300", height: 150),
                      Positioned(
                        right: 15,
                        bottom: 10,
                        child: Text('반려동물',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Dongle',
                            fontWeight: FontWeight.w300,
                            color: Colors.pink,
                            backgroundColor: Colors.yellow,
                          ),
                        ),
                      )
                    ],
                  ),
                  // 반려동물 소개 영역
                  Container(
                    width: deviceWidth / 2,
                    child: Text('반려동물 소개입니다. 반려동물 소개입니다. 반려동물 소개입니다.',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Dongle',
                        fontWeight: FontWeight.w300,
                        color: Colors.deepPurple
                      ),
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
