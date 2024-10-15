import 'package:exam_provider/number_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberScreen2 extends StatefulWidget {
  const NumberScreen2({super.key});

  @override
  State<NumberScreen2> createState() => _NumberScreen2State();
}

class _NumberScreen2State extends State<NumberScreen2> {
  @override
  Widget build(BuildContext context) {
    final numberListProvider = Provider.of<NumberListProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text("Screen 2"),
        ),
      ),
      body: Center(
          child: Text(
        "Totoal Count is ${numberListProvider.numbers.length}",
        style: TextStyle(fontSize: 35),
      )),
    );
  }
}
