import 'package:flutter/material.dart';

import 'package:plant_app/screens/home/widgets/custom_appbar.dart';
import 'package:plant_app/screens/home/widgets/custom_navigation_bar.dart';
import 'package:plant_app/screens/home/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: const HomeBody(),
      bottomNavigationBar: const CustomBottomNaviagtionBar(),
    );
  }
}
