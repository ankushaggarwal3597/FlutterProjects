import 'package:flutter/material.dart';
import 'package:second_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        // this for making content scrollble
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(
                  data); /*Row(
              children: [
                Text(((data['question_index'] as int) + 1)
                    .toString()), // this is telling dart that the type of objects will be an int this is type casting
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['user_Answer'] as String),
                      Text(data['correct_Answer'] as String),
                    ],
                  ),
                )
              ],
            );*/
            },
          ).toList(),
        ),
      ),
    ); // this is fr converting the list of map into a list of widgets as columns want a list of widgets
  }
}
