import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/common/common.dart';
import 'package:twitter_clone/features/auth/controller/auth_controller.dart';
import 'package:twitter_clone/theme/pallete.dart';

class CreatedTweetScreen extends ConsumerStatefulWidget {
   static route() => MaterialPageRoute(
        builder: (context) => const CreatedTweetScreen(),
      );
  const CreatedTweetScreen({super.key});

  @override
  ConsumerState <ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<CreatedTweetScreen> {
   @override
   Widget build(BuildContext context) {
    final currentUser = ref.watch(currentUserDetailProvider).value;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close, size: 30),
        ),
        actions: [
          RoundedSmallButton(
            onTap: () {}, 
            label: 'Tweet', 
            backgroundColor: Pallete.blueColor,
            textColor: Pallete.whiteColor,
          ),
        ],
      ),
      body: currentUser == null
      ? const Loader() 
      : SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(currentUser.profilePic),
                )
              ],
            )
          ],
        ),
        ),
      ),
    );
   }
}