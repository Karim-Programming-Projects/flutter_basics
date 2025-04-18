import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onPressed;
  AnswerItemModel({required this.title, required this.onPressed});
}

List<AnswerItemModel> answersForFirstQuestion = [
      AnswerItemModel(
        title: 'Football',
        onPressed: () => debugPrint('Football'),
      ),
      AnswerItemModel(
        title: 'Basketball',
        onPressed: () => debugPrint('Basketball'),
      ),
      AnswerItemModel(
        title: 'Volleyball',
        onPressed: () => debugPrint('Volleyball'),
      ),
      AnswerItemModel(
        title: 'Swimming',
        onPressed: () => debugPrint('Swimming'),
      ),
    ];

