import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';
class CategoryListView extends StatelessWidget {
 const  CategoryListView({super.key});
final List <CategoryModel> categories =const [
  CategoryModel(image: "lib/assets/buisness.jpeg", categoryName: "Business"),
  CategoryModel(image: "lib/assets/health.jpeg", categoryName: "Health"),
  CategoryModel(image: "lib/assets/sports.jpeg", categoryName: "Sports"),
  CategoryModel(image: "lib/assets/general.jpeg", categoryName: "General"),
  CategoryModel(image: "lib/assets/science.jpeg", categoryName: "Science"),
  CategoryModel(image: "lib/assets/entertainment.jpeg", categoryName: "Entertainment"),
  CategoryModel(image: "lib/assets/technology.jpeg", categoryName: "Technology"),
];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,

          itemCount: categories.length,
          itemBuilder: (context,index){
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
