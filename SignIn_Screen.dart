import 'package:flutter/material.dart';
import 'package:intern_app/ForgotPassword_Screen.dart';
import 'package:intern_app/SignUp_Screen.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'a.g.bell',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.teal,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: Image.asset('assets/Signin.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Sign In To Continue',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                    'Enter Email',
                  style: TextStyle(
                    fontSize: 18,
                  ),

                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'example@something.com',
                    prefixIcon: Icon(Icons.email,
                    color: Colors.blue,
                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                   contentPadding: EdgeInsets.all(16),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Enter Password',
                  style: TextStyle(
                    fontSize: 18,
                  ),

                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    suffixIcon: Icon(Icons.hide_source_outlined),
                    prefixIcon: Icon(Icons.lock,
                      color: Colors.blue,

                    ),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
              ),

                 Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ForgotPasswordScreen()));
                  },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                  ),
                  ),
              SizedBox(height: 15),
              SizedBox(
                height: 49,
                width: double.infinity,
                child: TextButton(
                    onPressed: (){},
                    child: Text(
                        'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                      ),

                    ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Don\'t have an account?',
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
              }, child: Text(
                ' SignUp',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
