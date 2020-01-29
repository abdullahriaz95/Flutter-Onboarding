import 'package:flutter/material.dart';

var pageList = [
  PageModel(
      imageUrl: "assets/workout.png",
      title: "TRAIN",
      body: "EXPERIENCE WICKED PLAYLISTS AND REMEMBER TO TRAIN",
      titleGradient: gradients[0]),
  PageModel(
      imageUrl: "assets/diet.png",
      title: "DIET",
      body: "FEEL THE MAGIC OF WELLNESS",
      titleGradient: gradients[1]),
  PageModel(
      imageUrl: "assets/health.png",
      title: "HEALTH",
      body: "LET'S HIKE UP",
      titleGradient: gradients[2]),
];

List<List<Color>> gradients = [
  [ Color(0xFF27DEBF), Color(0xFF43CBFF),],
  [Color(0xFF94C847), Color(0xFFE93E48)],
  [Color(0xFFE2859F), Color(0xFFFCCF31)],
];

class PageModel {
  var imageUrl;
  var title;
  var body;
  List<Color> titleGradient = [];
  PageModel({this.imageUrl, this.title, this.body, this.titleGradient});
}
