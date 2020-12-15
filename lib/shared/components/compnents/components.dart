import 'package:courses/shared/components/colors/colors.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  Color background = lightishPurple,
  Color textcolor = Textcolor,
  double radius = 15.0,
  @required Function function,
  @required String text,
  bool toUpper =true,
}) =>
    Container(
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: FlatButton(
        onPressed: function,
        child: Text(
          toUpper ? text.toUpperCase() : text,
          style: TextStyle(
            color: textcolor,
          ),
        ),
      ),
    );

Widget headText(String text) => Text(
  text,
  style: TextStyle(
    fontSize: 32.0,
  ),
);

Widget captionText(
  String text,
) => Text(
  text,
  style: TextStyle(
    fontSize: 16.0,
  ),
);

Widget TitleText(String text) => Text(
  text,
  style: TextStyle(
    fontSize: 28.0,

  ),
);

Widget detailsText(String text) => Text(
  text,
  style: TextStyle(
    fontSize: 14.0,
  ),
);

Widget logo() => Column(
  children: [
    Image(
      image: AssetImage('assets/images/audio-course.png'),
    ),

  ],
);

Widget defaultTextForm({
  String title,
  String hint = '',
  @required TextEditingController controller,
  @required TextInputType type,
  bool obSecure = false,
}) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        color: Colors.white,
      ),
      padding: EdgeInsetsDirectional.only(
        start: 10.0,
        end: 10.0,
        top: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) detailsText(title),

          TextFormField(
            keyboardType: type,
            controller: controller,
            obscureText: obSecure,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,

            ),

          ),
        ],
      ),
    );


void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  )
);