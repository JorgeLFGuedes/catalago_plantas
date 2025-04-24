import 'package:flutter/material.dart';
import '../models/plant.dart';
import '../utils/shared_preferences_helper.dart';

class PlantDetailsScreen extends StatefulWidget {
  final Plant plant;

  const PlantDetailsScreen({super.key, required this.plant});

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  late Future<bool> _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = SharedPreferencesHelper.isPlantFavorite(widget.plant.id);
  }

  Future<void> _toggleFavorite() async {
    final isCurrentlyFavorite = await _isFavorite;
    final favoriteIds = await SharedPreferencesHelper.getFavoritePlantIds();
    setState(() {
      if (isCurrentlyFavorite) {
        favoriteIds.remove(widget.plant.id);
      } else {
        favoriteIds.add(widget.plant.id);
      }
      SharedPreferencesHelper.saveFavoritePlantIds(favoriteIds);
      _isFavorite = SharedPreferencesHelper.isPlantFavorite(widget.plant.id);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isCurrentlyFavorite
              ? 'Removido dos favoritos!'
              : 'Adicionado aos favoritos!',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.plant.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.grass,
                size: 100,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Descrição:',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.teal),
            ),
            SizedBox(height: 8),
            Text(
              widget.plant.description,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 16),
            Text(
              'Dicas de Cuidado:',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.teal),
            ),
            SizedBox(height: 8),
            Text(
              widget.plant.careTips,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
      floatingActionButton: FutureBuilder<bool>(
        future: _isFavorite,
        builder: (context, snapshot) {
          final isFavorite = snapshot.data ?? false;
          return FloatingActionButton(
            onPressed: _toggleFavorite,
            tooltip: 'Favoritar Planta',
            child: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}