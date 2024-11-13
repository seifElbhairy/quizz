

import 'package:flutter/cupertino.dart';
import 'package:productt_quiz/model/signup_model.dart';
import 'package:productt_quiz/service/login_service.dart';

class LoginProvider extends ChangeNotifier
{
  SignupModel? obj;
  Future<bool> login (email, password) async
  {
    try
    {
      await LoginService .addData(email, password);
      notifyListeners();
      return true ;
    }
    catch(e)
    {
      print(e);
    }
    return false;
  }
}