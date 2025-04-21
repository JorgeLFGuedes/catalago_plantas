import 'package:flutter/material.dart';
import 'screens/plant_list_screen.dart';
import 'screens/plant_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Plantas',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PlantListScreen(),
        '/plant_details': (context) => const PlantDetailsScreen(),
      },
    );
  }
}