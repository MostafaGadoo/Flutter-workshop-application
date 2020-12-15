import 'package:courses/modules/login/login_screen.dart';
import 'package:courses/shared/components/colors/colors.dart';
import 'package:courses/shared/components/compnents/components.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  var FnameController = TextEditingController();
  var LnameController = TextEditingController();
  var emailController = TextEditingController();
  var PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0,),
              TitleText('Sign up'),
              SizedBox(height: 40.0,),
              defaultTextForm(
                  controller: FnameController,
                  type: TextInputType.name,
                title: 'First Name...',
                hint: 'Sarah',
              ),
              SizedBox(height: 20.0,),
              defaultTextForm(
                controller: LnameController,
                type: TextInputType.name,
                title: 'Last Name...',
                hint: 'Smith',
              ),
              SizedBox(height: 20,),
              defaultTextForm(
                controller: emailController,
                type: TextInputType.emailAddress,
                title: 'Email...',
                hint: 'SarahSmith@gmail.com',
              ),
              SizedBox(height: 20,),
              defaultTextForm(
                controller: PasswordController,
                type: TextInputType.visiblePassword,
                title: 'Password..',
                hint: '************************',
                obSecure: true,
              ),
              SizedBox(height: 20.0,),
              defaultButton(
                  function: (){

                  },
                  text: 'Sign Up',
              ),
              SizedBox(height: 24.0,),
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
                    navigateTo(context, LogInScreen());
                  },
                  text: 'Login',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
