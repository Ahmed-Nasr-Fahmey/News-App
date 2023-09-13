import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadlinesNews(
      {required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=df5659e260fe4570ad810a783a195de6&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        articlesList.add(ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        ));
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
