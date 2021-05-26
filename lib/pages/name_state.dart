import 'package:contact_silverlist/model/NameModel.dart';
import 'package:flutter/material.dart';

class NameState extends ChangeNotifier {

  List<NameModel> _allContacts = <NameModel>[
    NameModel('Marco Franco', '111111111'),
    NameModel('Raul Alday', '111111111'),
    NameModel('Jessica Alba', '111111111'),
    NameModel('Roger Waters', '111111111'),
    NameModel('Darth Vader', '111111111'),
    NameModel('Homer Simpson', '111111111'),
    NameModel('Bill Gates', '111111111'),
    NameModel('Elon Musk', '111111111'),
    NameModel('Enrique Peña', '111111111'),
    NameModel('Angeles Rodriguez', '111111111'),
    NameModel('Monica Alvarado', '111111111'),
    NameModel('Estrella Fugaz', '111111111'),
    NameModel('Juana Lopez', '111111111'),
  ]..sort((a, b) => a.name.compareTo(b.name));

  String _searchText = "";

  get name => null;

  set searchText(String text) {
    _searchText = text;
    notifyListeners();
  }

  List<NameModel> get displayName {
    if (_searchText == null || _searchText.length == 0) return _allContacts;
    return _allContacts
        .where((contact) =>
        contact.name.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();
  }
}