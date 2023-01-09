import 'package:flutter/material.dart';

class QuestionCards extends StatelessWidget {
  final questionName;
  final Color;
  final height;
  final width;
  const QuestionCards({
    super.key,
    required this.questionName,
    required this.Color,
    required this.height,
    required this.width,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        color: Color,
        elevation: 10,
        child: Center(
          child: Text(
            questionName,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
