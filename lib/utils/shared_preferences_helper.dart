import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String _favoriteKey = 'favorite_plants';

  static Future<void> saveFavoritePlantIds(List<String> favoriteIds) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_favoriteKey, favoriteIds);
  }

  static Future<List<String>> getFavoritePlantIds() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_favoriteKey) ?? [];
  }

  static Future<bool> isPlantFavorite(String plantId) async {
    final favoriteIds = await getFavoritePlantIds();
    return favoriteIds.contains(plantId);
  }
}