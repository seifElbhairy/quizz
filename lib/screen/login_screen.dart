
import 'package:flutter/material.dart';
import 'package:productt_quiz/provider/login_prov.dart';
import 'package:productt_quiz/screen/product_home.dart';
import 'package:provider/provider.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Login",style: TextStyle(fontSize: 45),),
        actions: [Icon(Icons.settings)],
      ),
      body: Consumer<LoginProvider>(builder: (context, prov, child)
      {
       var Email;
       var password;
        return  Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(20))
                  ),
                ),
                SizedBox(height: 40,),
                OutlinedButton(
                  onPressed: () async{
                    bool sign = await Provider.of<LoginProvider>(context,listen: false).login( Email.text, password.text);
                    if(sign)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>homee()));
                    }
                    
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error")));
                  },
                  child: Text("Login"),
                  
                ),
                TextButton(onPressed: (){}, child: Text("Don't Have an account?SignUp",style: TextStyle(fontSize: 20),))
              ],
            ),
          ),
        );
      },),
    );

  }
}
