import 'package:courses/layout/Cubit/cubit.dart';
import 'package:courses/layout/home.dart';
import 'package:courses/modules/login/login_screen.dart';
import 'package:courses/shared/components/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/forget_password/forget_password.dart';
import 'modules/signup/signup_screen.dart';
import 'modules/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => HomeCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Courses',
        theme: ThemeData(
          //backgroundColor: backgroundcolor,
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
