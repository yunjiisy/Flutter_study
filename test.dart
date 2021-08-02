int addNumber(int n1, int n2) {
  return n1 + n2;
}

void main() {
  String name = 'yunji';
  print(name);
  print("hi i'm $name!");

  //List<int> n = [];
  List<dynamic> n = [];
  //List n = [];

  n.add(0);
  n.add('one');
  n.add(2.5);
  n.add(true);
  n.add(addNumber(1, 2));
  print(n);

  List<String> names = [];
  names.addAll(['isy', 'yunji', 'nat']);
  print(names);
}
