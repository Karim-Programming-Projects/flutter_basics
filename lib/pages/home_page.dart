import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question_item_model.dart';
import 'package:flutter_basics/widgets/question_item.dart';
import 'package:flutter_basics/widgets/total_score_part.dart';
import 'package:flutter_basics/widgets/answer_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0, myTotalScore = 0;
  int answerChosen = -1;
  int resultedScore = questions.length * 20;
  bool showTotalScore = false;

  @override
  Widget build(BuildContext context) {
    debugPrint('Total Score: $myTotalScore');
    showTotalScore = myTotalScore >= resultedScore;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child:
              !showTotalScore
                  ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        QuestionItem(questionItem: questions[questionIndex]),
                        Column(
                          children: List.generate(
                            questions[questionIndex].availableAnswers.length,
                            (index) => AnswerItem(
                              answerMap:
                                  questions[questionIndex]
                                      .availableAnswers[index],
                              isAnswerChosen: answerChosen == index,
                              questionIndexChangeCallback: () {
                                setState(() {
                                  answerChosen = index;
                                });
                              },
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (questionIndex + 1 < questions.length) {
                                setState(() {
                                  questionIndex += 1;
                                });
                              }
                              setState(() {
                                myTotalScore += 20;
                                answerChosen = -1;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  : TotalScorePart(
                    myTotalScore: myTotalScore,
                    resetQuizOnpressed: () {
                      setState(() {
                        questionIndex = 0;
                        myTotalScore = 0;
                      });
                    },
                  ),
        ),
      ),
    );
  }
}

/*HomePagePart(
          questionIndexChangeCallback: () {
            setState(() {
              answerChosen = index;
            });
          },
          next: () {
            if (questionIndex + 1 < questions.length) {
              setState(() {
                questionIndex += 1;
              });
            }
            setState(() {
              myTotalScore += 20;
            });
          },
          questionItem: questions[questionIndex],
        )*/
