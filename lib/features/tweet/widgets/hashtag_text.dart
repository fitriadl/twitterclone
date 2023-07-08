import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:twitter_clone/theme/pallete.dart';

class Hashtagtext extends StatelessWidget {
  final String text;
  const Hashtagtext({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    List<TextSpan> textspans = [];

    text.split('').forEach((element) {
      if(element.startsWith('#')) {
        textspans.add(
          TextSpan(
            text: '$element',
            style: const TextStyle(
              color: Pallete.blueColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else if(element.startsWith('www.') || element.startsWith('https://')){
       textspans.add(
          TextSpan(
            text: '$element',
            style: const TextStyle(
              color: Pallete.blueColor,
              fontSize: 18,
            ),
          ),
        );
      } else {
        textspans.add(
          TextSpan(
            text: '$element',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        );
      }
        
    });
    return RichText(
      text: TextSpan(
        children: textspans,
    ));
  }

}