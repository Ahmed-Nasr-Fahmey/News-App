import 'package:flutter/material.dart';
import 'package:news_app/Models/catigory_model.dart';
import 'package:news_app/Views/category_view.dart';

class CatigoryCard extends StatelessWidget {
  const CatigoryCard({
    super.key,
    required this.catigory,
  });
  final CatigoryModel catigory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: catigory.catrgoryName!);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(catigory.image!),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              catigory.catrgoryName!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
