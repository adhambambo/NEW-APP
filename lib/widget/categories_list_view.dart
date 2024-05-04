import 'package:flutter/cupertino.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categoegories = const [
    CategoryModel(image: 'assets/960x0.webp', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(
        image: 'assets/renewable_energy_all.jpg', categoryName: 'General'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(
        image: 'assets/sports-reboot-promo-still-videoLarge.jpg',
        categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoegories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categoegories[index],
            );
          }),
    );
  }
}
