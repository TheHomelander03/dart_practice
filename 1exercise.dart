/*Define una clase Persona con atributos, nombre y edad. Crea una instancia de esta clase e imprime sus valores.
Agrega un método para mostrar los detalles de la persona.
*/

void main() {
  Person person1 = Person("Jose", 34);
  print("This person is called ${person1.name} and he have ${person1.age}years old");
}
class Person{

  String name;
  int age;

  Person(this.name, this.age);
}