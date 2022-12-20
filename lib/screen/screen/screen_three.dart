import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:stream_app/view_model/flutter/numbers_view_model.dart';

class ScreenThree extends StatefulWidget {
  // final NumbersViewModel numbersViewModel;
  ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
     return Consumer<NumbersViewModel>(
          builder: (context, numbersViewModel, child) {
        
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
              child: Text(numbersViewModel.nameThree,
              style: TextStyle(fontSize: 100,color: Colors.black),),
            ),)),
          ],
        ),
      )
     
     
       
       );});
     
     
  }
}