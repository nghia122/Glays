import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demo = [
  Product(
    id: 1,
    images: [
      "assets/images/RazerBladeP1.jpg",
      "assets/images/RazerBladeP2.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Razer Blade Pro 17 Gaming Laptop i7-10875H/RTX 2080 Super Max-Q 8G/16GB/SSD512GB",
    price: 6400.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/HP_Victus1.jpg",
      "assets/images/HP_Victus2.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "HP - Victus 16.1' Gaming Laptop - Intel Core i5 - 8GB Memory - NVIDIA GeForce",
    price: 5000.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/asus1.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Laptop ASUS ROG Zephyrus G14 GA401QM-K2041T (R9-5900HS | 32GB | 1TB | GeForce RTX™ 3060 6GB | 14' WQHD 120Hz | Win 10 | AniMe Matrix)",
    price: 3006.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/GheBC.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Cluvens Scorpion Computer Cockpit",
    price: 20000.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Up to 3 29inch monitors supported Worm auto 160 mode Load up to 125Kg High quality leather seat material";
