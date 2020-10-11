var questions = ['This is a test', 'the second test'];

class Person {
  String name;

  int age;

  Person({String inputName, age = 30}) {
    //тут идет задание именных параметров, а не по позиции... фигурные скобки говорят, что это именные параметры. age=30 задает значение по умолчанию для именного параметра

    //во флаттере можно указывать @required перед именным параметром чтобы он становился обязательным

    name =
        inputName; //тут мы используем name без this.name потому что у нас переменная name только одна в верхнем уровне, а вот переменная age у нас дублируется

    this.age =
        age; //this.age это обращение к верхней переменной класса, чтобы не спутать ее с локальной
  }

  void greet() {
    print('Hi, I am ' +
        name.toString() +
        ' and I am ' +
        age.toString() +
        ' years old!');
  }
}

class Person2 {
  String name;

  int age;

  Person2(
      {this.name,
      this.age}); //конструктор соединяет переменные с переменными класса автоматически

}

void forLoop() {
  for (int i = 0; i < 5; i++) {
    print('For loop ${i + 1}');
  }
}

void forLoopWithParams(int ass) {
  var start = 0;

  var end = start + ass;

  for (int i = start; i < end; i = i + 2) {
    print('For loop ${i + 1}');
  }
}

String wTf() {
  var ass = 'ASS';

  return ass;
}

void main() {
  forLoopWithParams(15);

  var p1 = Person(inputName: 'Johnny Cage', age: 89);

//p1.name = 'Max';

//p1.age = 38;

//var p2=Person();

  print(p1.name);

  print(p1.age);

  p1.greet();

  var p2 = Person2(name: "Pidor", age: 64);

  print(p2.name + " " + p2.age.toString());

//p2.greet();

  for (var x = 0; x < questions.length; x++) {
    print(questions[x]);
  }

  print(wTf());

  var isLoggedIn = false;
  if (isLoggedIn) {
    print("isLoggedIn is true");
  } else {
    print("isLoggedIn is false");
  }
}
