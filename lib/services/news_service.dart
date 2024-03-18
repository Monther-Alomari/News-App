import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=a49b4ff305ab410ca562adcecb205f41&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image:article ["urlToImage"], title: article["title"], subTitle: article["description"]);
        articlesList.add(articleModel);
      }
      return articlesList;
    }  catch (e) {
      return [];
      // TODO
    }
  }
}
