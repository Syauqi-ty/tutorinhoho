import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'course_view.dart';

class Pass with ChangeNotifier{
  List<Kategori> _kategoriList = [];
  List<Kategori2> _kategori2List = [];

  Kategori _kategoriOy;
  Kategori2 _kategori2;

  List<Kategori> get kategoriList => UnmodifiableListView(_kategoriList);
  List<Kategori2> get kategori2List => UnmodifiableListView(_kategori2List);

  Kategori get kategoriOy => _kategoriOy;
  Kategori2 get kategori2 => _kategori2;

  set kategoriList(List<Kategori> kategoriList){
    _kategoriList = kategoriList;
    notifyListeners();
}
  set kategori2List(List<Kategori2> kategori2List){
    _kategori2List = kategori2List;
    notifyListeners();

}

  set kategoriOy(Kategori kategori){
    _kategoriOy = kategori;
    notifyListeners();

}
  set kategori2(Kategori2 kategori2){
    _kategori2 = kategori2;
    notifyListeners();

  }}