import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import 'package:incypio_app/component/button/login_button.dart';
import 'package:incypio_app/component/input/checkbox.dart';
import 'package:incypio_app/component/input/form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const colorizeColors = [
    Color(0xFF548FE1),
    Color(0xFFFCDCB8),
    Color(0xFF548FE1)
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.9;

    double width = MediaQuery.of(context).size.width * 0.9;
    double button_width = MediaQuery.of(context).size.width * 0.9;

    double logo_width = MediaQuery.of(context).size.width * 0.1;
    double button_height = MediaQuery.of(context).size.height * 0.2;
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF548FE1), Color(0xFFFCDCB8), Color(0xFF548FE1)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height / 2,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        child: GradientAnimationText(
                            text: Text(
                              'InCypio',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                            colors: colorizeColors,
                            duration: Duration(seconds: 2)),
                      ),
                      Text(
                        "Your Personal Legal Assistant",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    LoginButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      buttonTitle: 'Login with Google',
                      buttonWidth: button_width,
                      icon: Icons.g_mobiledata_rounded,
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      borderColor: Colors.blue,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Other Login method ",
                        style: TextStyle(
                          color: Color(0xFFE9EEF6),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CheckBoxWithLabel()
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
