import 'package:flutter/material.dart';
import 'screens/plant_list_screen.dart';
import 'screens/plant_details_screen.dart';
import 'models/plant.dart';


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
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal[800],
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        cardTheme: CardTheme(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PlantListScreen(),
        '/plant_details': (context) => PlantDetailsScreen(
              plant: ModalRoute.of(context)!.settings.arguments as Plant,
            ),
      },
    );
  }
}