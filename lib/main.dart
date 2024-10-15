import 'package:exam_provider/number_provider.dart';
import 'package:exam_provider/number_screen1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NumberListProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NumberScreen1(),
      ),
    );
  }
}
