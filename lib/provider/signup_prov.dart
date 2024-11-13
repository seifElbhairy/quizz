

import 'package:flutter/cupertino.dart';
import 'package:productt_quiz/model/signup_model.dart';
import 'package:productt_quiz/service/signup_service.dart';

class SignUpProvider extends ChangeNotifier
{
  SignupModel? obj;

  Future<bool> signup (name, email, password,phone) async
  {
    try
    {
      await SignUpService.post(name, email, password,phone);
      notifyListeners();
      return true;
    }
    catch(e)
    {
      print(e);
    }
    return false;
  }
}