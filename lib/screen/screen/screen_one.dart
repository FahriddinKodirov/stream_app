import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:stream_app/view_model/flutter/numbers_view_model.dart';

class ScreenOne extends StatefulWidget {
  final NumbersViewModel numbersViewModel;
  ScreenOne({super.key, required this.numbersViewModel});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('One Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.35,),
            Container(child: Container(child: Center(
              child: Text(widget.numbersViewModel.name,
              style: TextStyle(fontSize: 100,color: Colors.black),),
            ),)),
          ],
        ),
      )
  

    
    );
  }
}