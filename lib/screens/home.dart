import 'package:flutter/material.dart';

import 'detail_1.dart';
import 'detail_2.dart';
import 'detail_3.dart';
import 'detail_4.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Center(
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
                                  maxWidth: deviceWidth / 2 - 20,
                                  maxHeight: deviceWidth / 2 - 20,
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
                                  maxWidth: deviceWidth / 2 - 20,
                                  maxHeight: deviceWidth / 2 - 20,
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
                                  maxWidth: deviceWidth / 2 - 20,
                                  maxHeight: deviceWidth / 2 - 20,
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
                                  maxWidth: deviceWidth / 2 - 20,
                                  maxHeight: deviceWidth / 2 - 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
