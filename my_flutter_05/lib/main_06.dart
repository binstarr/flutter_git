/// T extends 를 사용한 프로그래밍
/// T에 무작위 클래스가 들어갈 수 없게 특정 클래스를 상속받은 클래스로만 한정



void main(){
  GenericPrinter<Plastic> printer1 = new GenericPrinter();
  GenericPrinter<Powder> printer2 = new GenericPrinter();
}

class GenericPrinter<T extends Material>{
  late T material;

  T getMaterial(){
    return material;
  }

  void setMaterial(T material){
    this.material = material;
  }

}

abstract class Material{
  void doPrinting();
}
class Powder extends Material{

  @override
  void doPrinting() {
  }
}

class Plastic extends Material{
  @override
  void doPrinting() {
  }
}