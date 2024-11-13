
import 'package:flutter/material.dart';
import 'package:productt_quiz/provider/signup_prov.dart';
import 'package:productt_quiz/screen/login_screen.dart';
import 'package:provider/provider.dart';

class sign extends StatelessWidget {
  const sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Signup", style: TextStyle(fontSize: 40),),
        actions: [Icon(Icons.settings)],
        backgroundColor: Colors.cyan,
      ),
      body: Consumer<SignUpProvider>(builder: (context, value, child) {
        var userName;
        var email;
        var password;
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "UserName",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Phone",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))
                  ),
                ),
                SizedBox(height: 40,),
                OutlinedButton(
                  onPressed: () async {
                    bool signup = await Provider.of<SignUpProvider>(context,
                        listen: false).signup(
                        userName.text, email.text,password.text);
                    if (signup) {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => login()));
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Error")));
                  },
                  child: Text("SignUp"),
                ),
              ],
            ),
          ),
        );
      },),
    );
  }
}
