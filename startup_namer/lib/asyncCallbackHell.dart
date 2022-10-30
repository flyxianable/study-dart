/**
 * 回调地狱示例
 */
class AsyncCallbackHellDemo{

  Future<String> login(String name, String pwd) async{
    return "id13579";
  }
  Future<String> getUserName(String loginId) async{
    return "loginLyb";
  }

  Future<void> saveLoginName(String userName) async{
    print("save name");
  }

  /**
   * 模拟回调地狱的写法，多层嵌套
   * ⚠️注：不推荐使用
   */
  void hellDemo(){
    login("lyb", "123456").then((loginId) => {
      getUserName(loginId).then((userName) => {
        saveLoginName(userName).then((value) => {
          print("saveFinished")
        })
      })
    });
  }


}
