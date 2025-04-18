import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class AnswerItem extends StatefulWidget {
  final AnswerItemModel answerMap;
  final VoidCallback questionIndexChangeCallback;
  final bool isAnswerChosen;
  const AnswerItem({
    super.key,
    required this.answerMap,
    required this.questionIndexChangeCallback,
    required this.isAnswerChosen, 
  });

  @override
  State<AnswerItem> createState() => _AnswerItemState();
}

class _AnswerItemState extends State<AnswerItem> {
  int myTotalScore = 0;
  int answerChosen = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            widget.answerMap.onPressed();
            widget.questionIndexChangeCallback();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(14),
              color: widget.isAnswerChosen ? Colors.blueAccent : Colors.transparent,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.check,
                    color: widget.isAnswerChosen ? Colors.greenAccent : Colors.blueAccent,
                    size: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.answerMap.title,
                    style: TextStyle(color: widget.isAnswerChosen ? Colors.white : Colors.indigoAccent),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
