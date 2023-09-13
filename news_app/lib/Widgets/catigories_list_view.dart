import 'package:flutter/material.dart';
import 'package:news_app/Models/catigory_model.dart';

import 'catigory_card.dart';

class CatigoriesListView extends StatelessWidget {
  const CatigoriesListView({
    super.key,
  });

  final List<CatigoryModel> catigories = const [
    CatigoryModel(
      image: 'assets/images/technology.png',
      catrgoryName: "Technology",
    ),
    CatigoryModel(
      image: 'assets/images/sports.png',
      catrgoryName: "Sports",
    ),
    CatigoryModel(
      image: 'assets/images/business.png',
      catrgoryName: "Business",
    ),
    CatigoryModel(
      image: 'assets/images/entertaiment.png',
      catrgoryName: "Entertainment",
    ),
    CatigoryModel(
      image: 'assets/images/health.png',
      catrgoryName: "Health",
    ),
    CatigoryModel(
      image: 'assets/images/science.png',
      catrgoryName: "Science",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: catigories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CatigoryCard(
            catigory: catigories[index],
          );
        },
      ),
    );
  }
}
