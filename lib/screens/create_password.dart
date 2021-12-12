import 'package:chit_chat/screens/forget_password_screen.dart';
import 'package:chit_chat/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen ({Key? key}) : super(key: key);
  static String id="create_password_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Image(
                image: const AssetImage("assets/1.jpg"),
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text("Create Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
              ),
              const Text("Please set your password for login.",
                style: TextStyle(
                  fontSize: 16,
                ),),
              const SizedBox(height: 30,),
              const Align(
                alignment:Alignment.centerLeft,
                child: Text("Password",
                  style: TextStyle(
                    fontSize: 16,
                  ),),
              ),
              const SizedBox(height: 5,),
              TextField(
                obscureText: true,
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "Enter passwornd here",
                  fillColor: Theme.of(context).backgroundColor,
                  filled: true,
                  border: InputBorder.none,

                ),
              ),
              const SizedBox(height: 10,),
              const Align(
                alignment:Alignment.centerLeft,
                child: Text("Retype Password",
                  style: TextStyle(
                    fontSize: 16,
                  ),),
              ),
              const SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "Enter passwornd here",
                  fillColor: Theme.of(context).backgroundColor,
                  filled: true,
                  border: InputBorder.none,

                ),
              ),
              const SizedBox(height: 20,),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const ForgetPasswordScreen()));
              },
                style: OutlinedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    fixedSize: Size(MediaQuery.of(context).size.width,50)
                ),
                child:const Text("Sign In",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const Spacer(),

            ],
          ),
        ),
      ),

    );
  }
}
