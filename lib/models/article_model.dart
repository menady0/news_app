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
           "https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png",
       desc = desc ?? '';
}
