
const constB = "B";
const constC = "C";
const constD = constB;

class DartTest{

  //测试dynamic和Object
  dynamic dyn;
  // Object obj;

  void testDynaObj(){
    dyn.abc();
    // obj.abc();

    String a = dyn.str;
    // String b = obj.str;
  }


  //测试final 和const
  // final finalA;
  final finalB = "abc";
  //Only static fields can be declared as const.
  // (Documentation)  Try declaring the field as final, or adding the keyword 'static'.
  static const constA = "abc";

}

class DartB{
  static const constD = constC;
  static const constE = constB;

  testA() {
    int i;
    //The non-nullable local variable 'i' must be assigned before it can be used. (Documentation)
    // Try giving it an initializer expression, or ensure that it's assigned on every execution path.
    // print(i * 8);

  }

  testB(){
    int i = 8; //默认为不可空，必须在定义时初始化。
    int? j; // 定义为可空类型，对于可空变量，我们在使用前必须判空。

// 如果我们预期变量不能为空，但在定义时不能确定其初始值，则可以加上late关键字，
// 表示会稍后初始化，但是在正式使用它之前必须得保证初始化过了，否则会报错
    late int k;
    // int a = k * 5;
    k=9;
    int b = k * 5;
  }


}

