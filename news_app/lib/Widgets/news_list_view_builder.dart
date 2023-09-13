import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../Models/article_model.dart';
import '../Services/news_service.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  Future<List<ArticleModel>>? future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlinesNews(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return NewsListView(
            articles: snapShot.data!,
          );
        } else if (snapShot.hasError) {
          const SliverFillRemaining(
            child: Center(
              child: Text(
                'Oops There was an erorr, try later',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          );
        }
        return const SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
