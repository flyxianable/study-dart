class AsyncTest{

  Future<String> login(String name, String pwd) async{
    return "id13579";
  }
  Future<String> getUserName(String loginId) async{
    return "loginLyb";
  }

  Future<void> saveLoginName(String userName) async{
    print("save name");
  }

    doTask() async{

      String loginId = await login("lyb", "123456");
      String userName = await getUserName(loginId);
      await saveLoginName(userName);

  }

}