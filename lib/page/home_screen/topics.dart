import 'package:flutter/material.dart';
import 'package:incypio_app/component/layout/masonry_view.dart';

class TopicWidget extends StatefulWidget {
  const TopicWidget({super.key});

  @override
  State<TopicWidget> createState() => _TopicWidgetState();
}

class _TopicWidgetState extends State<TopicWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 10, 10),
            child: Text(
              "Topics",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          MasonryLayout()
        ],
      ),
    );
  }
}
