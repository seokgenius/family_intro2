import 'package:flutter/material.dart';

import 'detail_1.dart';
import 'detail_2.dart';
import 'detail_3.dart';
import 'detail_4.dart';

class Members extends StatelessWidget {
  Members({super.key});

  var imagePaths = ["https://loremflickr.com/320/240/paris,girl/all", "https://loremflickr.com/320/240/paris,girl/all", "https://loremflickr.com/320/240/paris,girl/all", "https://loremflickr.com/320/240/paris,girl/all"];
  var pages = [FirstDetail(), SecondDetail(), ThirdDetail(), FourthDetail()];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          var img = imagePaths[index];
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:
                    (context) => pages[index]
                ),
              );
            },
            child: Card(
              color: Colors.grey,
              child: Column(
                children: [
                  Image.network(img, fit: BoxFit.contain),
                ],
              ),
            ),
          );
        }
    );
  }
}

