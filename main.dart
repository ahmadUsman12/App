import 'package:flutter/material.dart';
import 'package:intern_app/SignIn_Screen.dart';
import 'package:intern_app/SignUp_Screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child:Column(
                  children:[
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'a.g.bell',
                        style: TextStyle(
                          fontSize : 50,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 400,
                      child: Image(image: AssetImage(
                        'assets/illus.jpeg',
                      ),
                      ),
                    ),

                     SizedBox(
                       height: 49,
                       width: 370,
                       child: TextButton(
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
                          },
                          child: Text(
                              'SignIn',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),

                          ),
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(color: Colors.blue)
                                  )
                              )
                          )
                        ),
                     ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 49,
                      width: 370,
                      child: TextButton(
                          onPressed:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                          },
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),

                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(color: Colors.blue)
                                  )
                              )
                          )
                      ),
                    ),

                  ],
                ),
            ),
            ),
    );

  }
}

