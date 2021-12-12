import 'package:chit_chat/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen ({Key? key}) : super(key: key);
  static String id="forget_password_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                child: Text("Forget Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
              ),
              const Text("Reset your account password?",
                style: TextStyle(
                  fontSize: 16,
                ),),
              const SizedBox(height: 30,),
              const Align(
                alignment:Alignment.centerLeft,
                child: Text("Phone",
                  style: TextStyle(
                    fontSize: 16,
                  ),),
              ),
              const SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter number here",
                  filled: true,fillColor: Theme.of(context).backgroundColor,
                  border: InputBorder.none,
                  prefixIcon:const Icon(Icons.keyboard_arrow_down_rounded),
                ),
              ),
              const SizedBox(height: 30,),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const SignUpScreen()));
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
