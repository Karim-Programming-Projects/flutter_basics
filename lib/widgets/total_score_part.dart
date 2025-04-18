import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  final int myTotalScore;
  final VoidCallback resetQuizOnpressed;
  const TotalScorePart({
    super.key,
    required this.myTotalScore,
    required this.resetQuizOnpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Congratulations!',
              style: TextStyle(
                fontSize: 36,
                color: Colors.redAccent,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              'Your total score is: $myTotalScore.',
              style: const TextStyle(
                fontSize: 26,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
            Tooltip(
              message:
                  'Warning: This will also reset your score. Confirm reset?',
              child: TextButton(
                onPressed: resetQuizOnpressed,
                child: const Text(
                  'Reset Quiz',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
