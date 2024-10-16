import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _ratingvalue = [2, 5, 3, 4, 0];
  List<int> get ratingvalue => _ratingvalue;
  set ratingvalue(List<int> value) {
    _ratingvalue = value;
  }

  void addToRatingvalue(int value) {
    ratingvalue.add(value);
  }

  void removeFromRatingvalue(int value) {
    ratingvalue.remove(value);
  }

  void removeAtIndexFromRatingvalue(int index) {
    ratingvalue.removeAt(index);
  }

  void updateRatingvalueAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    ratingvalue[index] = updateFn(_ratingvalue[index]);
  }

  void insertAtIndexInRatingvalue(int index, int value) {
    ratingvalue.insert(index, value);
  }

  String _menuselecionado = 'Perfil';
  String get menuselecionado => _menuselecionado;
  set menuselecionado(String value) {
    _menuselecionado = value;
  }

  int _Userpage = 0;
  int get Userpage => _Userpage;
  set Userpage(int value) {
    _Userpage = value;
  }

  bool _mousee = false;
  bool get mousee => _mousee;
  set mousee(bool value) {
    _mousee = value;
  }
}
