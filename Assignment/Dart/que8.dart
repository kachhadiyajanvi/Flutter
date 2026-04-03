// Base class
class Employee {
  String name;
  double basicSalary;

  Employee(this.name, this.basicSalary);

  double calculateSalary() {
    return basicSalary;
  }
}

// Subclass: Permanent Employee
class PermanentEmployee extends Employee {
  PermanentEmployee(String name, double basicSalary)
      : super(name, basicSalary);

  @override
  double calculateSalary() {
    double hra = basicSalary * 0.20;   // 20% HRA
    double da = basicSalary * 0.10;    // 10% DA
    return basicSalary + hra + da;
  }
}

// Subclass: Contract Employee
class ContractEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  ContractEmployee(String name, this.hoursWorked, this.hourlyRate)
      : super(name, 0);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

void main() {
  Employee emp1 = PermanentEmployee("Amit", 30000);
  Employee emp2 = ContractEmployee("Ravi", 120, 500);

  print("Permanent Employee Salary: ₹${emp1.calculateSalary()}");
  print("Contract Employee Salary: ₹${emp2.calculateSalary()}");
}