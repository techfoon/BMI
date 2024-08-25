import 'dart:math';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int? level;
  Result(
      {required this.bmiAge,
      required this.bmiWeight,
      required this.bmiHeight,
      required this.gChoice}) {
    age = int.parse(bmiAge); // ye line nahi samj me aaya
    weight = int.parse(bmiWeight); // ye line nahi samj me aaya
    height = int.parse(bmiHeight);
    healthScore = weight / ((height / 100) * (height / 100));

    if (18 <= healthScore && healthScore <= 24) {
      print("healthy");
      level = 2;
    } else if (healthScore > 24) {
      print('fat');
      level = 3;
    } else if (healthScore < 18) {
      print('thin');
      level = 1;
    }

    // ye line nahi samj me aaya
  }

  String bmiAge, bmiWeight, bmiHeight;
  late int age, weight, height, gChoice; // ye line nahi samj me aaya

  late double healthScore; // ye line samj nahi agaya

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: Image.asset(
                  'assets/${gChoice == 1 ? 'boy' : 'girl'}/${level == 1 ? 'thin.png' : level == 2 ? 'fat.png' : level == 3 ? 'fit.png' : 'default'}'),
            ),
            SizedBox(
              height: 10,
            ),

            Text(
              
              "Good News! You are so fit  $gChoice;",
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),

  
            SizedBox(
              height: 50,
            ),
            Text(
              " Weigth: $weight",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Gender: ${gChoice == 1 ? 'Male' : 'Female'}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "height: $height(cm) and ${height / 100}(meters)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              " Health Score : ${healthScore.toStringAsFixed(2)}",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 175, 94, 76)),
            ),
          ],
        ),
      ),
    );
  }
}
