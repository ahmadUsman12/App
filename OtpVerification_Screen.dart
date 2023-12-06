
import 'package:flutter/material.dart';

class OtpVerificationScree extends StatefulWidget {
  const OtpVerificationScree({super.key});

  @override
  State<OtpVerificationScree> createState() => _OtpVerificationScreeState();
}

class _OtpVerificationScreeState extends State<OtpVerificationScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
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
              SizedBox(height: 20,),

              Image.asset('assets/otp.gif',height: 10,width: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
