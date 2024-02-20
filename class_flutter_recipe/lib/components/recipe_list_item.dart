import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(
      {required this.imageName, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/$imageName.jpeg",
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text("Have you ever made your own $title? "
              "Once you've tried a homemade $title, "
              "you'll never go back.")
        ],
      ),
    );
  }
}
