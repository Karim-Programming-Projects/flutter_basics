/*import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question_item_model.dart';
import 'answer_item.dart';
import 'question_item.dart';

class HomePagePart extends StatelessWidget {
  final VoidCallback questionIndexChangeCallback;
  final QuestionItemModel questionItem;
  final VoidCallback next;
  const HomePagePart({
    super.key,
    required this.questionIndexChangeCallback,
    required this.questionItem,
    required this.next,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionItem(questionItem: questionItem),
                Column(
                  children: List.generate(
                    questionItem.availableAnswers.length,
                    (index) => AnswerItem(
                      answerMap: questionItem.availableAnswers[index],
                      questionIndexChangeCallback: questionIndexChangeCallback,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      next;
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}*/
/* questionItem.availableAnswers
                          .map(
                            (answerMap) => AnswerItem(
                              answerMap: answerMap,
                              questionIndexChangeCallback:
                                  questionIndexChangeCallback,
                            ),
                          )
                          .toList(),*/