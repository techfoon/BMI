import 'package:flutter/material.dart';

import 'bmidashboard.dart';

void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiDashBord(),

      
    );
  }
}
