class SignupModel
{
  String status;

  SignupModel({required this.status,});
  factory SignupModel.json(Map<String,dynamic>dat){
    return SignupModel(status:dat['data']);
  }
  }
