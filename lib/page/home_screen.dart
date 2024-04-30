import 'package:flutter/material.dart';
import 'package:incypio_app/component/layout/masonry_view.dart';
import 'package:incypio_app/component/navigation_bar/bottom_navigation.dart';
import 'package:incypio_app/page/home_screen/topics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        body: TopicWidget() ,
      ),
    );
  }
}
