import 'package:courses/modules/signup/signup_screen.dart';
import 'package:courses/shared/components/colors/colors.dart';
import 'package:courses/shared/components/compnents/components.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
              SizedBox(
                height: 20.0,
              ),
              TitleText('Login'),
              SizedBox(height: 135,),
              defaultTextForm(
                  type: TextInputType.emailAddress,
                  controller: emailController,
                  title: 'Email...',
                hint: 'name@email.come',
              ),
              SizedBox(height: 30,),
              defaultTextForm(
                obSecure: true,
                type: TextInputType.visiblePassword,
                controller: passwordController,
                title: 'Password...',
                hint: '***********',
              ),
              SizedBox(height: 55.0,),
              defaultButton(
                text: 'Login',
                function: (){},
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
                  text: 'Sign up',
                  function: ()
                  {
                    navigateTo(context, SignUpScreen());
                  },
                ),
              ),
              SizedBox(height: 37.0,),
              Center(
                  child: captionText(
                      'Forgot your password?'
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
