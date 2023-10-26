import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  List<String> _place = [];
  List<String> get place => _place;

  void toggleFavorite(String place) {
    final isExist = _place.contains(place);
    if (isExist) {
      _place.remove(place);
    } else {
      _place.add(place);
    }
    notifyListeners();
  }

  bool isExist(String place) {
    final isExist = _place.contains(place);
    return isExist;
  }

  void clearFavorite() {
    _place = [];
    notifyListeners();
  }

  static FavoriteProvider of(
      BuildContext context, {
        bool listen = true,
      }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}