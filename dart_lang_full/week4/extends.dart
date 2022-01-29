void main() {
  Executive exc = Executive('bahadir', 12000, 'IT');
  exc.showSalary();
  exc.showDepartment();
  //exc.salary = exc.increaseSalary();

  Employee emp = Employee('bob', 4000);
  emp.showSalary();
}

// Abstract class
//There are properties and methods to be used in common in all classes.
abstract class IUser {
  final String name;
  final int salary;

  IUser(this.name, this.salary);

  void showSalary() {
    print('$name salary: $salary');
  }
}

class Employee extends IUser {
  final String name;
  final int salary;

  Employee(this.name, this.salary) : super(name, salary);

}

class Executive extends IUser {
  final String departmentName;

  Executive(String name, int salary, this.departmentName) : super(name, salary);

  int increaseSalary() {
    return salary * 2;
  }

  void showDepartment() {
    print('Department name: $departmentName');
  }
}
