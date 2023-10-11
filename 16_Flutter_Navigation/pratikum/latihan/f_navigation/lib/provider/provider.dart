import 'package:flutter/foundation.dart';

class ProviderImage extends ChangeNotifier {
  int _selectIndex = -1;
  int get selectedIndex => _selectIndex;

  void selectedImage(int index)
  {
    _selectIndex = index;
    notifyListeners();

  }
}