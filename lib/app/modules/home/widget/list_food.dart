import 'package:flutter/material.dart';

class ListFood {
  final String image;
  final String name;
  final String time;
  final String stars;
  final String price;

  ListFood(
      {required this.image,
      required this.name,
      required this.time,
      required this.stars,
      required this.price});
}

List<ListFood> list = [
  ListFood(
    image: "assets/images/food_1.png",
    name: "Shrimp garlic noodle ",
    time: "25mins",
    stars: "4.5",
    price: "\$10.50",
  ),
  ListFood(
    image: "assets/images/food_2.png",
    name: "Chicken veggie",
    time: "20mins",
    stars: "4.8",
    price: "\$13.80",
  ),
  ListFood(
    image: "assets/images/food_3.png",
    name: "Baked Salmon",
    time: "30mins",
    stars: "4.7",
    price: "\$9.30",
  ),
  ListFood(
    image: "assets/images/food_4.png",
    name: "Parcific Poke",
    time: "25mins",
    stars: "4.8",
    price: "\$12.50",
  ),
];
