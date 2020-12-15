import 'package:courses/modules/login/login_screen.dart';
import 'package:courses/shared/components/colors/colors.dart';
import 'package:courses/shared/components/compnents/components.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      // appBar: AppBar(
      //   backgroundColor: backgroundcolor,
      //   elevation: 0.0,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                  width: 194,
                  child: headText('Welcome to Courses')),
              SizedBox(
                height: 28,
              ),
              Container(
                  width: 180,
                  height: 180,
                  child: logo()),
              SizedBox(height: 66,),

              defaultButton(
                  function: (){

                  },
                  text: 'login'
              ),
              SizedBox(
                height: 24.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: lightishPurple),
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                ),
                child: defaultButton(
                  background: backgroundcolor,
                    textcolor: lightishPurple,
                    function: (){
                    },
                    text: 'sign up'
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              captionText('Or login with'),
              SizedBox(
                height: 14.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor:lightishPurple,
                    child: Image.asset(
                      'assets/images/apple-logo.png',
                      height: 14,
                      width: 16,
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor:lightishPurple,
                    child: Image.asset(
                      'assets/images/google-logo.png',
                      height: 14,
                      width: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
