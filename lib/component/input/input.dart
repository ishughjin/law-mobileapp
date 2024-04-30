import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Input extends StatefulWidget {
  final Text placeholder;
  final bool isHidden;
  const Input({Key? key, required this.placeholder, required this.isHidden})
      : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isHidden,
      decoration: InputDecoration(
        hintText: widget.placeholder.data,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        contentPadding: EdgeInsets.all(4.0), // Adjust the padding
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
