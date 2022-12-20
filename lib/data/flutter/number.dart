class Number{
  var num;
  String getMyNumber(String number){
  return num = number;
  }
   
}
Stream<int> getMyNumbers() async*{
    String num = getMyNumbers().toString();
    for (int i = 1; i < int.parse(num); i++){
      yield i;
      await Future.delayed(const Duration(seconds: 1));
    }
  }