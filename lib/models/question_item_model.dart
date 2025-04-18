import 'package:flutter_basics/models/answer_item_model.dart';
import 'package:flutter/material.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> availableAnswers;

  QuestionItemModel({required this.title, required this.availableAnswers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: "What's your favorite sport?",
    availableAnswers: [
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
    ],
  ),
  QuestionItemModel(
    title: "What's your favorite color?",
    availableAnswers: [
      AnswerItemModel(title: 'Blue', onPressed: () => debugPrint('Blue')),
      AnswerItemModel(title: 'Green', onPressed: () => debugPrint('Green')),
      AnswerItemModel(title: 'Red', onPressed: () => debugPrint('Red')),
      AnswerItemModel(title: 'White', onPressed: () => debugPrint('White')),
    ],
  ),
  QuestionItemModel(
    title: "What's your favorite animal?",
    availableAnswers: [
      AnswerItemModel(title: 'Lion', onPressed: () => debugPrint('Lion')),
      AnswerItemModel(title: 'Dog', onPressed: () => debugPrint('Dog')),
      AnswerItemModel(title: 'Cat', onPressed: () => debugPrint('Cat')),
      AnswerItemModel(title: 'Tiger', onPressed: () => debugPrint('Tiger')),
    ],
  ),
  QuestionItemModel(
    title: "What's your favorite subject?",
    availableAnswers: [
      AnswerItemModel(title: 'Math', onPressed: () => debugPrint('Math')),
      AnswerItemModel(title: 'Physics', onPressed: () => debugPrint('Physics')),
      AnswerItemModel(
        title: 'Chemistry',
        onPressed: () => debugPrint('Chemistry'),
      ),
      AnswerItemModel(title: 'Biology', onPressed: () => debugPrint('Biology')),
    ],
  ),
  QuestionItemModel(
    title: "What's your favorite type of birds?",
    availableAnswers: [
      AnswerItemModel(title: 'Ravens', onPressed: () => debugPrint('Ravens')),
      AnswerItemModel(title: 'Pigeons', onPressed: () => debugPrint('Pigeons')),
      AnswerItemModel(title: 'Parrots', onPressed: () => debugPrint('Parrots')),
      AnswerItemModel(title: 'Eagles', onPressed: () => debugPrint('Eagles')),
    ],
  ),
];
