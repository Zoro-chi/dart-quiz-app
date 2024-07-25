import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/components/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(isCorrectAnswer, itemData['question_index'] as int),
        const SizedBox(width: 20),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['question'] as String,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              itemData['user_answer'] as String,
              style: const TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 232, 11, 235),
              ),
            ),
            Text(
              itemData['answer'] as String,
              style: const TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 3, 246, 11),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
