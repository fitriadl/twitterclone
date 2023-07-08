import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_clone/features/tweet/widgets/tweet_list.dart';
import 'package:twitter_clone/theme/pallete.dart';
import 'package:twitter_clone/constants/constants.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        colorFilter: const ColorFilter.mode(Pallete.blueColor, BlendMode.srcIn),
      ),
      centerTitle: true,
    );
  }

  static const List<Widget> bottomTabBarPages = [
    TweetList(),
    Text('Search Screen'),
    Text('Notification Screen'),
  ];
}
