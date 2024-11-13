
import 'package:dio/dio.dart';
import 'package:productt_quiz/model/signup_model.dart';

class SignUpService
{
  static Dio dio =Dio();
  static post (String name ,String email , String password,String phone) async
  {
    final response = await dio.post("https://student.valuxapps.com/api/register",
        data: {
          "username": name,
          "phone":phone,
          "email":email,
          "password" : password,
        }
    );
    if(response.statusCode! >= 200 && response.statusCode! < 300)
    {
      print(response.data);
      return SignupModel.json(response.data);
    }
    else
    {
      throw Exception("this Error ");
    }
  }
}