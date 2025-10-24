import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
      "https://newsapi.org/v2/top-headlines?apiKey=5e26754288b94f23bae2d2ff2bc512a9&category=general",
    );
    List<dynamic> articles = response.data["articles"];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        imgPath: article["urlToImage"],
        title: article["title"],
        desc: article["description"],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
