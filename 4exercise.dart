/*Crea una enumeración DiaSemana con los días de la semana.
Define una extensión sobre int que devuelva true si el número es par. Úsalo para verificar si un número ingresado por el usuario es par.
*/

void main(List<String> args) {
  var day = 5;

  if(day >= 1 && day <= 7){
    print("the day selected is ${days.values[day -1]}");
  }else{
    print("no value");
  }

}

enum days{Monday, 
Tuesday, 
Wednesday, 
Thursday, 
Friday, 
Saturday, 
Sunday}

extension operation on int{
  bool par(){
    return this % 2 == 0;
  }
  
  }
