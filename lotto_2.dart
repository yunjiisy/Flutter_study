List<int> lottoNumber() {
  var num = (List.generate(45, (i) => ++i)..shuffle()).sublist(0, 6);

  print('당첨번호');
  print(num);
  return num;
}

List<int> myNumber() {
  var num2 = (List.generate(45, (i) => ++i)..shuffle()).sublist(0, 6);

  print('내 추첨번호');
  print(num2);
  return num2;
}

void checkNumber(List<int> number, List<int> number2) {
  int match=0;

  for (int lotto in number) {
    for (int myNum in number2) {
      if (lotto == myNum) {
        match++;
      }
    }
  }
  print('$match개의 당첨번호가 일치합니다!');
}

void main() {
  List<int> lottoFinal = lottoNumber();
  List<int> myFinal = myNumber();
  checkNumber(lottoFinal, myFinal);
}
