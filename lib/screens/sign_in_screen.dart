import 'package:chit_chat/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
              const Text("Welcome Back",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontSize: 30,
              ),),
              const Text("Sign to get start.",
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
              const SizedBox(height: 10,),
              const Align(
                alignment:Alignment.centerLeft,
                child: Text("Password",
                  style: TextStyle(
                    fontSize: 16,
                  ),),
              ),
              const SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_open),
                  hintText: "Enter passwornd here",
                  fillColor: Theme.of(context).backgroundColor,
                  filled: true,
                  border: InputBorder.none,

                ),
              ),
              Row(
                children: [
                  Checkbox(
                      value: false,
                      onChanged: (value){}),
                  const Text("Remember me",
                    style:TextStyle(

                    ) ,),
                  const Spacer(),
                  TextButton(onPressed: (){},
                      child:Text("Forget Password?",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                        ),),
                  )
                ],
              ),
              const SizedBox(height: 20,),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                    style:TextStyle(

                    ) ,),
                  TextButton(onPressed: (){},
                    child: Text("Sign Up",style: TextStyle(
                        color: Theme.of(context).primaryColor,
                    ),),

                  )
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
