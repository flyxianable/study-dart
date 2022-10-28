import 'package:startup_namer/FUtils.dart';

class FutureTest{

  int currentTimeMillis() {
    return new DateTime.now().millisecondsSinceEpoch;
  }

  void doFutureDelay(){
    int begin = currentTimeMillis();
    Future.delayed(Duration(seconds: 2), (){
      return "doFuture";
    }).then((data){

      int space  = currentTimeMillis() - begin;
      print(data + "; overed time =  " + space.toString());
    }).catchError((e) =>{
      print("e =" + e.toString())
    }).whenComplete(() => {
      //不管成功或失败，都要执行的
    }
    );
  }

  void doFutureWait(){
    var result;
    Future.wait([Future.delayed(Duration(seconds: 2), (){
      return "wait 1";
    }), Future.delayed(Duration(seconds: 2), (){
      return "wait 2";
    })]).then((value) => {
      result = value[0] + " & " +  value[1],
      print(result)
    });
  }




}
