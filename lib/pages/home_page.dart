import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 32,
            ),
            children: [
              TextSpan(text: "News"),
              TextSpan(
                text: "App",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
      body: const CategoryListView(),
    );
  }
}