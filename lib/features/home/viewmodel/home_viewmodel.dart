import 'package:flutter/material.dart';
import '../model/lapangan_model.dart';


class HomePageViewModel extends ChangeNotifier {
  List<LapanganModel> _lapanganList = [];

  List<LapanganModel> get lapanganList => _lapanganList;

  void fetchLapangan() {
    // Sample data
    _lapanganList = [
      LapanganModel(
        id: '1',
        name: 'Chin Futsal',
        imageUrl: 'assets/image_futsal1.png',
        fieldtype: '6A Side',
        description: 'Amardeep',
        rating: 4.8,
        price: 1500,
      ),
       LapanganModel(
        id: '2',
        name: 'Moon Futsal',
        imageUrl: 'assets/image_futsal2.png',
        fieldtype: '6A Side',
        description: 'Lamachaur',
        rating: 4.8,
        price: 1600,
      ),
       LapanganModel(
        id: '3',
        name: 'Lucky Futsal',
        imageUrl: 'assets/image_futsal3.png',
        fieldtype: '6A Side',
        description: 'Nadipur',
        rating: 4.8,
        price: 1300,
      ),
    ];
    notifyListeners();
  }
}

