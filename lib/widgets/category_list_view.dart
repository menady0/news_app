import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      imgPath: "assets/general.jpg",
      categoryName: "General",
    ),
    CategoryModel(
      imgPath: "assets/business.jpg",
      categoryName: "Business",
    ),
    CategoryModel(
      imgPath: "assets/entertaiment.jpg",
      categoryName: "Entertainment",
    ),
    CategoryModel(
      imgPath: "assets/health.jpg",
      categoryName: "Health",
    ),
    CategoryModel(
      imgPath: "assets/science.jpg",
      categoryName: "Science",
    ),
    CategoryModel(
      imgPath: "assets/sports.jpg",
      categoryName: "Sports",
    ),
    CategoryModel(
      imgPath: "assets/technology.jpeg",
      categoryName: "Technology",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) =>
            CategoryCard(category: categories[index]),
      ),
    );
  }
}
