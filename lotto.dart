import 'dart:math';

Set<int> lottoNumber() {
  final random = Random();

  final Set<int> lottoSet = {};
  //var num;

//중복이 일어나지 않음(Set는 중복 허용 x)
  while (lottoSet.length < 6) {
    //num = random.nextInt(45) + 1;
    lottoSet.add(random.nextInt(45) + 1);
  }

  print('당첨번호');
  print(lottoSet.toList());

  return lottoSet;
}

//중복이 일어남->위의 lottoNumbe와 같이 바꾸어 주면 됨(while사용)
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
  List<int> lottoFinal = lottoNumber().toList();
  List<int> myFinal = myNumber();

  checkNumber(lottoFinal, myFinal);
}
