import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:stream_app/data/flutter/number.dart';
import 'package:stream_app/screen/screen/screen_one.dart';
import 'package:stream_app/screen/screen/screen_three.dart';
import 'package:stream_app/screen/screen/screen_two.dart';
import 'package:stream_app/view_model/dart/number_view_model.dart';
import 'package:stream_app/view_model/flutter/numbers_view_model.dart';

class ScreenMain extends StatefulWidget {
  ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  final TextEditingController nameController = TextEditingController();

  @override

 var num;
 var num2;
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
       create: (context) => NumbersViewModel(),
       builder: (context, child) {
         return Consumer<NumbersViewModel>(
          builder: (context, numbersViewModel, child) {
        
            return Scaffold(
              backgroundColor: Colors.black,
                 appBar: AppBar(
                  backgroundColor: Colors.black,
                  centerTitle: true,
            title: Text('Main page'),
                 ),
                 body: Container(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: TextFormField(
                    keyboardType:TextInputType.number,
                    controller: nameController,
                    
                     onChanged: (value) {
                       num  = context.read<NumbersViewModel>().addToStreamOne(value);
                       num2  = context.read<NumbersViewModel>().addToStreamTwo(value);
                       num2  = context.read<NumbersViewModel>().addToStreamThree(value);
                     },
                      textInputAction: TextInputAction.done,
                      textCapitalization: TextCapitalization.characters,
             
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      decoration: InputDecoration(

                        labelText: 'Number',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(
                            width: 1,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.white)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.white)),
                        errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.white)),
                      ),
                    ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        
                        onPressed: (){
                        Provider.of<NumbersViewModel>(context,listen: false)
                                  .addToStreamOne(nameController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScreenOne(numbersViewModel: numbersViewModel,)));
                      }, child: Text('One')),
                      
                    Container(child: Text(numbersViewModel.name, style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){
                        Provider.of<NumbersViewModel>(context,listen: false)
                                  .addToStreamTwo(nameController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScreenTwo(numbersViewModel: numbersViewModel)));
                      }, child: Text('Two')),
                      Container(child: Text(numbersViewModel.nameTwo, style: TextStyle(fontSize: 20,color: Colors.blue),)),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){
                        Provider.of<NumbersViewModel>(context,listen: false)
                                  .addToStreamThree(nameController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScreenThree()));
                      }, child: Text('Three')),
                      Container(child: Text(numbersViewModel.nameThree, style: TextStyle(fontSize: 20,color: Colors.blue),))
                    ],
                  ),
                ),

              ])),
               );
          },
      
         );
       },
      
     
    );
  }
}