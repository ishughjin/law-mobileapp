import 'package:flutter/material.dart';

class CheckBoxWithLabel extends StatefulWidget {
  const CheckBoxWithLabel({super.key});

  @override
  State<CheckBoxWithLabel> createState() => _CheckBoxWithLabelState();
}

class _CheckBoxWithLabelState extends State<CheckBoxWithLabel> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getBorderColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.red; // The color when checkbox is selected
      }
      return Colors.black; // The default color
    }

    return Row(mainAxisAlignment: MainAxisAlignment.center, 
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Checkbox(
        checkColor: Colors.white, // The color of the check
        fillColor: MaterialStateProperty.resolveWith(
            getBorderColor), // The color of the checkbox border
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
      Expanded(
        child: Text(
            'I have read and agree to the User Agreement and Privacy Policy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            )),
      )
    ]);
  }
}
