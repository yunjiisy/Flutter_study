void main() {
  //generate함수는 두개의 인자값을 가짐. 1.리스트의 사이즈 2.함스(숫자들을 생성)
  var test = (List<int>.generate(45, (i) => i + 1)..shuffle())
      .sublist(0, 6); //shuffle로 섞고, sublist=start end(인덱스)까지의 인덱스만을 가지고 옴

  print(test);
}
