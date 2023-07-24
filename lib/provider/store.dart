import 'package:flutter/material.dart';

class store with ChangeNotifier{
  int NoOfLikes = 10;

  increaseLikes(){
    NoOfLikes++;
    notifyListeners();
  }
  decreseLikes(){
    NoOfLikes --;
    notifyListeners();
  }

}