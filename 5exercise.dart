/*Crea un mixin Nadador con un método nadar(). Agrégalo a una clase Delfín que herede de la clase abstracta Animal.
Define un Factory constructor en una clase Vehículo que devuelva una instancia de diferentes tipos de vehículos dependiendo del tipo ingresado (e.g., "auto", "moto").
*/
void main() {
  var tiger = Tiger();
  tiger.roar();
  tiger.run();

  var truck = Vehicle.create("truck");
  print(truck.type);

  var bicycle = Vehicle.create("bicycle");
  print(bicycle.type);
}

abstract class Creature {
  void roar();
}

mixin Runner {
  void run() => print('The creature is running');
}

class Tiger extends Creature with Runner {
  @override
  void roar() {
    print('The tiger is roaring');
  }
}

abstract class Vehicle {
  final String type;

  Vehicle(this.type);

  factory Vehicle.create(String type) {
    if (type == 'truck') {
      return Truck();
    } else if (type == 'bicycle') {
      return Bicycle();
    } else {
      throw 'Unknown vehicle type'; 
    }
  }
}

class Truck extends Vehicle {
  Truck() : super('truck');
}

class Bicycle extends Vehicle {
  Bicycle() : super('bicycle');
}
