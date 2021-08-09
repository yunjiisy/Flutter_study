import 'dart:io';

void main() {
  showData();
}

void showData() async{
  startTask();
  //accesssData를 호추 할 때 먼저 실행이 끝날 때 까지 기다리라는 의미
  String account = await accessData();
  fetchData(account);
}

//Synchronize
// void startTask() {
//   String info1 = '요청 수행 시작';
//   print(info1);
// }
// //실행에 시간이 걸리든 그렇지 않던 순서가 되면 무조건 실행 됨.(순서대로!)
// void accessData() {
//   Duration time = Duration(seconds: 3);
//   sleep(time);
//   String info2 = '데이터에 접속중';
//   print(info2);
// }

// void fetchData() {
//   String info3 = '잔액은 8500만원 입니다';
//   print(info3);
// }

void startTask() {
  String info1 = '요청 수행 시작';
  print(info1);
}

//실행에 시간이 걸리든 그렇지 않던 순서가 되면 무조건 실행 됨.(순서대로!)
//asynk ->중괄호 앞에 붙여줌, await키워드 사용 가능
Future<String> accessData() async{
  String account = '8500만원';

  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 2) {
    // sleep(time);
    await Future.delayed(time, () {
      
      print(account);
    });
  } else {
    String info2 = '데이터를 가져왔습니다.';
    print(info2);
  }

  return account;
}

void fetchData( String account) {
  String info3 = '잔액은 $account 입니다';
  print(info3);
}
