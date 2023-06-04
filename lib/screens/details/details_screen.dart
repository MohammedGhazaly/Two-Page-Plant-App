import 'package:flutter/material.dart';
import 'package:plant_app/models/plant_model.dart';
import 'package:plant_app/screens/details/widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.plantObject});
  final Plant plantObject;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(plantObject: plantObject),
    );
  }
}
