import 'package:courses/shared/components/colors/colors.dart';
import 'package:courses/shared/components/compnents/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  var ForgetEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              TitleText('Forget Password'),
              SizedBox(height: 190.0,),
              defaultTextForm(
                  controller: ForgetEmailController,
                  type: TextInputType.emailAddress,
                title: 'Email...',
                hint: 'SarahSmith@gmail.com',
              ),
              SizedBox(height: 150.0,),
              defaultButton(
                  function: (){},
                  text: 'Send reset code',
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
                  function: (){},
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
