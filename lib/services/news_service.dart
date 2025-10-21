import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  getNews() async {
    final response = await dio.get("https://newsapi.org/v2/top-headlines?apiKey=5e26754288b94f23bae2d2ff2bc512a9&category=general");
    print(response);
  }
}