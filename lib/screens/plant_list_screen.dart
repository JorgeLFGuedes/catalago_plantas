import 'package:flutter/material.dart';
import '../models/plant.dart';
import '../utils/shared_preferences_helper.dart';

class PlantListScreen extends StatefulWidget {
  const PlantListScreen({super.key});

  @override
  State<PlantListScreen> createState() => _PlantListScreenState();
}

class _PlantListScreenState extends State<PlantListScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Plant> _filteredPlants = [];
  final List<Plant> _allPlants = plants;
  List<String> _favoritePlantIds = [];
  bool _showOnlyFavorites = false;

  @override
  void initState() {
    super.initState();
    _filteredPlants = _allPlants;
    _searchController.addListener(_filterPlants);
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final favorites = await SharedPreferencesHelper.getFavoritePlantIds();
    setState(() {
      _favoritePlantIds = favorites;
    });
    _filterPlants();
  }

  void _filterPlants() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredPlants = _allPlants.where((plant) {
        final isFavorite = _favoritePlantIds.contains(plant.id);
        final matchesSearch = plant.name.toLowerCase().contains(query);
        return (_showOnlyFavorites ? isFavorite : true) && matchesSearch;
      }).toList();
    });
  }

  Future<void> _toggleFavorite(Plant plant) async {
    final updatedFavorites = [..._favoritePlantIds];
    if (updatedFavorites.contains(plant.id)) {
      updatedFavorites.remove(plant.id);
    } else {
      updatedFavorites.add(plant.id);
    }
    await SharedPreferencesHelper.saveFavoritePlantIds(updatedFavorites);
    _loadFavorites();
  }

  void _toggleShowFavorites() {
    setState(() {
      _showOnlyFavorites = !_showOnlyFavorites;
      _filterPlants();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Plantas'),
        actions: [
          IconButton(
            icon: Icon(
              _showOnlyFavorites ? Icons.favorite : Icons.list,
              color: _showOnlyFavorites ? Colors.red : Colors.white,
            ),
            onPressed: _toggleShowFavorites,
            tooltip: _showOnlyFavorites ? 'Exibir Todas' : 'Exibir Favoritas',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Pesquisar planta',
                prefixIcon: Icon(Icons.search, color: Colors.teal),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredPlants.length,
              itemBuilder: (context, index) {
                final plant = _filteredPlants[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: Icon(Icons.grass, color: Colors.teal, size: 40),
                    title: Text(
                      plant.name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.teal),
                    ),
                    subtitle: Text(
                      plant.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        _favoritePlantIds.contains(plant.id)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                        size: 30,
                      ),
                      onPressed: () => _toggleFavorite(plant),
                    ),
                    onTap: () async {
                      await Navigator.pushNamed(
                        context,
                        '/plant_details',
                        arguments: plant,
                      );
                      _loadFavorites();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}