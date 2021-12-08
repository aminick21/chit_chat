import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children:[
              Image(
                image: const AssetImage("assets/2.jpg"),
                height: MediaQuery.of(context).size.height/2.8,
                width: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
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
              OutlinedButton(onPressed: (){},
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
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",
                    style:TextStyle(

                    ) ,),
                  TextButton(onPressed: (){},
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

    );
  }
}
