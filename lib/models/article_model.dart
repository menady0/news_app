class ArticleModel {
  final String imgPath;
  final String title;
  final String desc;

  ArticleModel({
    required String? imgPath,
    required this.title,
    required String? desc,
  }) : imgPath =
           imgPath ??
           "https://images.pexels.com/photos/158651/news-newsletter-newspaper-information-158651.jpeg",
       desc = desc ?? '';
}
