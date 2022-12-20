import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stream_app/data/dart/stream_number_one.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen'),
      ),
    body: StreamBuilder<int>(
      stream: StreamNumberOne.getMyNumbers(12),
      builder: ((context, snapshot) {
         if (snapshot.hasData) {
            return Center(child: Text(snapshot.data!.toString(),style: TextStyle(fontSize: 35),));
          }
          return Center(child: CircularProgressIndicator());
      }) ),
    );

  }
}