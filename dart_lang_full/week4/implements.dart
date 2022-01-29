void main() {
  Student std = Student('bahadir', 24, 4);
  std.showInfos();

  Teacher tch = Teacher('drky', 28, 4);
  tch.showInfos();
}

abstract class IPerson {
  final String name;
  final int age;

  IPerson(this.name, this.age);

  void showInfos() {
    print('Name: $name Age: $age');
  }
}

class Student implements IPerson {
  final String name;
  final int age;
  final int classCode;

  Student(this.name, this.age, this.classCode);

  @override
  void showInfos() {
    print('Name: $name Age: $age ClassCode: $classCode');
  }
}

class Teacher implements IPerson {
  final String name;
  final int age;
  final int experience;

  Teacher(this.name, this.age, this.experience);

  @override
  void showInfos() {
    print('Name: $name Age: $age Exp: $experience');
  }
}
