

import 'package:dio/dio.dart';
import 'package:productt_quiz/model/signup_model.dart';

class LoginService
{
  static Dio dio =Dio();
  static addData (String email , String password) async
  {
    final response = await dio.post("https://student.valuxapps.com/api/login",
        data: {
          "email":email,
          "password" : password,
        }
    );
    if(response.statusCode! >= 200 && response.statusCode! < 300)
    {
      print(response.data);
      return SignupModel.json (response.data);
    }
    else
    {
      throw Exception("Server Error ");
    }
  }
}