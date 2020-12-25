
import 'package:courses/layout/Cubit/states.dart';
import 'package:courses/modules/Profile/ProfileScreen.dart';
import 'package:courses/modules/courses/Courses_screen.dart';
import 'package:courses/modules/search_screen/search_screen.dart';
import 'package:courses/modules/settings/settings_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit <HomeStates>
{
  HomeCubit() : super(HomeStateInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  var widget =
  [
    CoursesScreen(),
    SearchScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  var titles =
  [
   'Courses',
   'Search',
   'Profile',
    'Settings',
  ];

  int currentIndex = 0;

  changeIndex(index){
    currentIndex = index;
    emit(HomeStateIndex());
  }
}



