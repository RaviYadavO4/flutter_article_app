import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  final VoidCallback onTap;

  const ArticleCard({required this.article, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(article.title),
        subtitle: Text(article.body.length > 60 ? '${article.body.substring(0, 60)}...' : article.body),
        onTap: onTap,
      ),
    );
  }
}
