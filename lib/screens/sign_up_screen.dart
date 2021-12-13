import 'package:chit_chat/screens/home_screen.dart';
import 'package:chit_chat/screens/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String id="sign_up_screen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email="";
  String password="";
  final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(

            child: Column(
              children:[
                Image(
                  image: const AssetImage("assets/2.jpg"),
                  height: MediaQuery.of(context).size.height/2.8,
                  width: MediaQuery.of(context).size.width,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text("Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                ),
                const Text("Create an account to get start.",
                  style: TextStyle(
                    fontSize: 16,
                  ),),
                const SizedBox(height: 30,),
                const Align(
                  alignment:Alignment.centerLeft,
                  child: Text("Email",
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                ),
                const SizedBox(height: 5,),
                TextField(
                  onChanged: (value){
                    setState(() {
                      email=value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your email here",
                    filled: true,fillColor: Theme.of(context).backgroundColor,
                    border: InputBorder.none,
                    prefixIcon:const Icon(Icons.email_outlined),
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
                TextField(
                  onChanged: (value){
                    setState(() {
                      password=value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password here",
                    filled: true,fillColor: Theme.of(context).backgroundColor,
                    border: InputBorder.none,
                    prefixIcon:const Icon(Icons.lock_open),
                  ),
                ),
                const SizedBox(height: 30,),
                OutlinedButton(
                  onPressed: ()async{
                  try {
                    await _auth.createUserWithEmailAndPassword(email: email, password: password);
                    Navigator.pushNamed(context,HomeScreen.id);
                  }catch(e){
                    print(e);
                    }

                },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      fixedSize: Size(MediaQuery.of(context).size.width,50)
                  ),
                  child:const Text("Sign Up",
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                      style:TextStyle(
                      ) ,),
                    TextButton(onPressed: (){
                    },
                      child: Text("Sign In",style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),),

                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
