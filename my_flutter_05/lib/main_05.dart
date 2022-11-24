import 'main_06.dart';
/// Dart Genenric
/// 제네릭 프로그래밍은 타입 매개변수(T)를 통해 타입에 대한 유연한 개처를 가능하게 한다.
/// 다트 컬렉션(자료구조 list,map,set)에서 많이 사용되어 진다.


void main(){

  Powder powder = Powder();
  Plastic plastic = Plastic();

  GenericPrinter<Powder> printer1 = GenericPrinter();
  GenericPrinter<Plastic> printer2 = GenericPrinter();

  printer1.setMaterial(powder);
  printer2.setMaterial(plastic);

  print(printer1);
  print(printer2);

}

class GenericPrinter<T>{
  late T material;

  T getMaterial(){
    return material;
  }

  void setMaterial(T material){
    this.material = material;
  }

  @override
  String toString() {
    return 'GenericPrinter{material: $material}';
  }
}

