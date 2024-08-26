import 'package:flutter/material.dart';
import 'package:gpt/pallete.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String text;
  final String description;
  const FeatureBox(
      {super.key,
      required this.color,
      required this.text,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(
            15,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // This ensures the text is left-aligned
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10), // Add space between the text and description
            Text(
              description,
              style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
