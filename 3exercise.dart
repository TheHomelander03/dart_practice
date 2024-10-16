/*Define una clase abstracta Animal con un método comer(). Crea una subclase Perro que implemente este método.
Agrega una aserción en el constructor de Perro para asegurarte de que la edad del perro sea mayor que 0.
*/

void main(List<String> args) {
  Dog Dog1 = new Dog(1);
  Dog1.comer();
}
abstract class Animal{
  
  void comer();
}

class Dog extends Animal{
  int age;

  Dog(this.age){
    assert(age > 0, 'La edad debe de ser mayor a 0');
  }
  void comer(){
    print("El perro esta comiendo y tiene la edad de $age");
  }
}