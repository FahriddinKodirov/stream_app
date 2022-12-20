class StreamNumberOne{
  static Stream<int> getMyNumbers(int box) async*{
      yield box * box;
      await Future.delayed(const Duration(seconds: 1));
    
  }
  
}

 // await for (var data in contentStream) {
  //   print(data.length);
  // }