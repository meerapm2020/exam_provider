import 'package:exam_provider/number_provider.dart';
import 'package:exam_provider/number_screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberScreen1 extends StatefulWidget {
  const NumberScreen1({super.key});
  @override
  State<NumberScreen1> createState() => _NumberScreen1State();
}
class _NumberScreen1State extends State<NumberScreen1> {
  @override
  Widget build(BuildContext context) {
    final numberListProvider = Provider.of<NumberListProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text("Screen 1"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NumberScreen2()));
              },
              icon: Icon(Icons.forward))
        ],
      ),
      body: Column(
        children: [
          Text("Totoal Count is ${numberListProvider.numbers.length}"),
          Expanded(
            child: ListView.builder(
                itemCount: numberListProvider.numbers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(numberListProvider.numbers[index].toString()),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          numberListProvider.addNumbers();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
