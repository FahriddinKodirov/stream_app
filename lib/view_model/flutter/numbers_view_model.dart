import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:stream_app/data/dart/stream_number_one.dart';
import 'package:stream_app/data/dart/stream_number_two.dart';
import 'package:stream_app/data/flutter/number.dart';

class NumbersViewModel extends ChangeNotifier{
 NumbersViewModel(){
  listenName();
  listenNameTwo();
  listenNameThree();
  notifyListeners();
  
 }


// !--------------------------------- One -----------------------------------------
  String name = "empty";
  StreamController<String> streamControllerOne = StreamController<String>();

  addToStreamOne(String name) {
    streamControllerOne.add(name);
    notifyListeners();
  }

  listenName() {
    Stream<String> stream = streamControllerOne.stream;
    stream.listen((event) {
      name = (int.parse(event)*int.parse(event)).toString();
      notifyListeners();
    });
  }
// !--------------------------------- Two ------------------------------------------
  String nameTwo = "empty";
  StreamController<String> streamControllerTwo = StreamController<String>();

  addToStreamTwo(String name) {
    streamControllerTwo.add(name);
    notifyListeners();
  }

  listenNameTwo() {
    Stream<String> stream = streamControllerTwo.stream;
    stream.listen((event) {
      nameTwo = event.length.toString();
      notifyListeners();
    });
  }
  // !------------------------------------ Three --------------------------------------
 
  String nameThree = "empty";
  StreamController<String> streamControllerThree = StreamController<String>();

  addToStreamThree(String name) {
    streamControllerThree.add(name);
    notifyListeners();
  }

  listenNameThree() {
    Stream<String> stream = streamControllerThree.stream;
    stream.listen((event) async {
      for(int i = 0; i <= int.parse(event); i++){
       nameThree = i.toString(); 
       await Future.delayed(const Duration(seconds: 1)); 
       notifyListeners();
      }
      });
      // notifyListeners();
  }
 
  // pauseCounterStream() => subscription.pause();
  
  // resumeCounterStream() => subscription.resume();
  
  // cancelCounterStream() => subscription.cancel();
// !---------------------------------------------------------------------------
  


}
