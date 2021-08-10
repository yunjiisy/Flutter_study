import 'dart:math';

List<int> lottoNumber() {
  var random = Random();

  List<int> lottoList = [];
  var num;

  for (int i = 0; i < 6; i++) {
    num = random.nextInt(45) + 1;
    lottoList.add(num);
  }

  print('당첨번호');
  print(lottoList);

  return lottoList;
}

List<int> myNumber() {
  var random = Random();

  List<int> myList = [];
  var num;

  for (int i = 0; i < 6; i++) {
    num = random.nextInt(45) + 1;
    myList.add(num);
  }

  print('내 추첨번호');
  print(myList);

  return myList;
}

void checkNumber(List lottoList, List myList) {
  int match = 0;

  for (int lotto in lottoList) {
    for (int myNum in myList) {
      if (myNum == lotto) {
        match++;
        print('일치하는 번호 : $myNum');
      }
    }
  }
  print('일치하는 번호 갯수: $match');
}

void main() {
  List<int> lottoFinal = lottoNumber();
  List<int> myFinal = myNumber();

  checkNumber(lottoFinal, myFinal);
}
