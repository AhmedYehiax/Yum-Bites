import 'package:flutter/material.dart';
import 'package:task4/bottom_nav.dart';
void replaceWithHome(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => BottomNav()),
  );
}
