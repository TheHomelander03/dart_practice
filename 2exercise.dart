/*Crea una clase Empleado que herede de Persona. Agrega un constructor nombrado que incluya nombre, edad y un nuevo atributo, cargo. 
Sobrescribe el método de mostrar detalles para incluir el cargo del empleado.
*/

void main() {
  Employee employee1 = Employee.cargo("Jose", 21, "Assistant");

  print(employee1.Cargo());
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Employee extends Person {
  String cargo;

  Employee.cargo(String name, int age, this.cargo) : super(name, age);

  String Cargo() {
    return "This employee is called $name, they are $age years old, and their position is $cargo.";
  }
}
