import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginButton extends StatefulWidget {
  final String buttonTitle;
  final double buttonWidth;
  final IconData? icon;
  final Color color;
  final Color textColor;
  final Color? borderColor;
  final Function()? onPressed;

  LoginButton(
      {Key? key,
      required this.buttonTitle,
      required this.buttonWidth,
      this.borderColor,
      this.icon,
      required this.onPressed,
      required this.color,
      required this.textColor})
      : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) => widget.color,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: widget.borderColor ?? widget.color,
              width: 1.0,
            ),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 100,
              child: Icon(
                widget.icon,
                color: widget.textColor,
              ),
            ),
            Text(
              widget.buttonTitle,
              style: TextStyle(color: widget.textColor),
            )
          ],
        ),
      ),
    );
  }
}
