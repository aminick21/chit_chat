import 'package:chit_chat/screens/home_screen.dart';
import 'package:chit_chat/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignInScreen extends StatefulWidget {
static String id="sign_in_screen";
  const SignInScreen({Key? key}) : super(key: key);
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image(
                  image: const AssetImage("assets/1.jpg"),
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text("Welcome Back",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                ),
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
                  onChanged: (value){
                    setState(() {
                      email=value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Enter email here",
                    filled: true,
                    fillColor: Theme.of(context).backgroundColor,
                    border: InputBorder.none,
                    prefixIcon:const Icon(Icons.mail_outlined),
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
                  onChanged: (value){
                    setState(() {
                      password=value;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_open,),
                    hintText: "Enter passwornd here",
                    fillColor: Theme.of(context).backgroundColor,
                    filled: true,
                    border: InputBorder.none,

                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                          value: false,
                          onChanged: (value){
                          }),
                    ),
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
                OutlinedButton(
                  onPressed: ()async {
                try {
                  final newUser = await _auth.signInWithEmailAndPassword(
                      email: email,
                      password: password);
                    Navigator.pushNamed(context,HomeScreen.id);

                }catch(e){
                  print(e);
                }
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?",
                        style:TextStyle(

                        ) ,),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, SignUpScreen.id);

                      },
                        child: Text("Sign Up",style: TextStyle(
                            color: Theme.of(context).primaryColor,
                        ),),

                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
