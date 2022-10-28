/**
 * 人之所以区别于猿猴，是因为学会了发明工具
 */
class Person{
  say(){
    print("say something, balabala");
  }
  makeTools(){
    print("makeTools make person become different with the monkey");
  }
}

/**
 * 往面向对象靠，这有点像接口interface
 */
mixin Eat{
  eat(){
    print("eat, eat, just eat, like a pig to eat ha");
  }
}

/**
 * 行走
 */
mixin Walk{
  walk(){
    print("walk with legs, two or four, three? who ha");
  }
}

/**
 * 编码
 */
mixin Code{
  code(){
    print("coding, coding and coding, no stop, so pitful, ha");
  }
}
/**
 * 渣
 */
mixin Bad{
  bad(){
    print("is so bad！");
  }

}
/**
 * 狗子用4条腿走路
 */
class Dog with Walk, Eat{
  @override
  walk() {
    // TODO: implement walk
   print("walk with four legs");
  }
}

/**
 * 瘸腿狗子用3条腿走路
 */
class LameDog extends Dog{
  walk() {
    // TODO: implement walk
    print("walk with three legs");
  }
}

/**
 * 男人
 */
class Man extends Person with Walk, Eat{
  @override
  walk() {
    print("walk with two legs");
  }

  male(){
    print("is  male");
  }
}

/**
 * 渣男，首先是个男人，然后很渣
 */
class BadMan extends Man with Bad{
}

/**
 * IT男首先是个人，然后会走，会吃，会写代码。不会写代码最多算个男人
 */
class ITMan extends Person with Walk, Eat, Code{

}

/**
 * IT渣男，比如xx哈
 */
class ItBadMan extends BadMan{

}

