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

  // Constructor de la clase Person
  Person(this.name, this.age);
}

class Employee extends Person {
  String cargo;

  // Constructor nombrado 'cargo' para Employee
  Employee.cargo(String name, int age, this.cargo) : super(name, age);

  // Sobrescribir el método para mostrar detalles
  String Cargo() {
    return "This employee is called $name, they are $age years old, and their position is $cargo.";
  }
}
