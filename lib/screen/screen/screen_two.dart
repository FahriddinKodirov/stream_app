import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:stream_app/view_model/flutter/numbers_view_model.dart';

class ScreenTwo extends StatefulWidget {
  final NumbersViewModel numbersViewModel;
  ScreenTwo({super.key, required this.numbersViewModel});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Two Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.35,),
            Container(child: Container(child: Center(
              child: Text(widget.numbersViewModel.nameTwo,
              style: TextStyle(fontSize: 100,color: Colors.black),),
            ),)),
          ],
        ),
      )
    
    
    
    );
  }
}