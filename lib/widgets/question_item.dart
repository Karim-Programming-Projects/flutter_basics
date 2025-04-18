import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question_item_model.dart';

class QuestionItem extends StatelessWidget {
  final QuestionItemModel questionItem;
  const QuestionItem({super.key, required this.questionItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionItem.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.red,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Answer & get points!',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Colors.green,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
