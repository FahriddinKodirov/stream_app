import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:stream_app/data/dart/stream_number_one.dart';
import 'package:stream_app/data/dart/stream_number_two.dart';

class NumberViewModel extends ChangeNotifier{
 NumberViewModel(){
 listenNumbers();
 }

 int count = 0;
 late StreamSubscription subscription;

 listenNumbers() async {
  Stream<int> stream = StreamNumberTwo.getMyNumbers();
  await for (var data in stream) {
    count = data;
    notifyListeners();

 }

//  pauseConterStream() => subscription.pause();
//  resumeCounterStream() => subscription.resume();
//  cancelCounterStream() => subscription.cancel();

 }

}

 // await for (var data in contentStream) {
  //   print(data.length);
  // }