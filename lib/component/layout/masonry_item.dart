import 'package:flutter/material.dart';

class MasonryItem extends StatelessWidget {
  final String imageUrl;

  const MasonryItem({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Color.fromARGB(255, 36, 36, 36)),
        ),
        onPressed: () => {},
        child: Container(
          width: double.maxFinite,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.image, color: Colors.white, size: 20),
                Text("Text Style "),
                Text("Text Style StyleStyleStyleStyleStyleStyleStyleStyleStyle Style Style Style Style Style Style"),
              ]),
        ));
  }
}
