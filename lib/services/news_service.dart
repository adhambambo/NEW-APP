import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apikey=5e742fd5ac1542f09dcba0aea780c34e&country=us&category=$category');
      Map<String, dynamic> JsonData = response.data;

      List<dynamic> articles = JsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articlesList.add(articleModel);
      }
      print(articlesList);
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
