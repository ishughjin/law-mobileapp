import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:incypio_app/component/input/input.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Input(
            placeholder: const Text('Enter your email'),
            isHidden: false,
          ),
          Input(
            placeholder: const Text('Enter your password'),
            isHidden: true,
          ),
        ],
      ),
    );
  }
}
