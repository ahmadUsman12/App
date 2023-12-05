import 'package:flutter/material.dart';
import 'package:intern_app/SignIn_Screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController accountController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white70,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 22),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'SignUp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                    'Create An Account',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/usman.png'),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 70,
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Enter Name',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Name
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white.withOpacity(0.8),
                    filled: true,
                    hintText: 'Your Name',
                    prefixIcon: Icon(Icons.account_circle_sharp,
                    color: Colors.blue,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),

              // Date of birth
              SizedBox(height: 14,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Enter Date of Birth',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: dobController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white.withOpacity(0.8),
                    filled: true,
                    hintText: 'Day/Month/Year',
                    prefixIcon: Icon(Icons.calendar_month_outlined,
                      color: Colors.blue,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              // choose An Account Type
              SizedBox(height: 14,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Choose An Account Type',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: accountController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white.withOpacity(0.8),
                    filled: true,
                    hintText: 'Tap here for selection',
                    prefixIcon: Icon(Icons.account_circle_sharp,
                      color: Colors.blue,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              //Enter Email
              SizedBox(height: 14,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Enter Email',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white.withOpacity(0.8),
                    filled: true,
                    hintText: 'someone@gmail.com',
                    prefixIcon: Icon(Icons.email,
                      color: Colors.blue,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              //Password
              SizedBox(height: 14,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white.withOpacity(0.8),
                    filled: true,
                    hintText: '************',
                    prefixIcon: Icon(Icons.lock,

                      color: Colors.blue,
                    ),
                    suffixIcon: Icon(Icons.hide_source,color: Colors.blue,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              //confirm password
              SizedBox(height: 14,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: confirmpassController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fillColor: Colors.white.withOpacity(0.8),
                    filled: true,
                    hintText: '***********',
                    prefixIcon: Icon(Icons.lock,
                      color: Colors.blue,
                    ),
                    suffixIcon: Icon(Icons.hide_source),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: SizedBox(

                  width: double.infinity,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
                  },
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,

                    ),
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
