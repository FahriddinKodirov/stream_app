class StreamNumberTwo{
  static Stream<int> getMyNumbers() async*{
    for (int i = 1; i < 100; i++){
      if(i % 2 == 0)
      yield i;
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}

 // await for (var data in contentStream) {
  //   print(data.length);
  // }