import 'package:flutter/material.dart';
import 'package:twitter_clone/common/loading_page.dart';
import 'package:twitter_clone/features/auth/controller/auth_controller.dart';
import 'features/auth/view/login_view.dart';
import 'features/auth/view/signup_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context, WidgetRef) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: ref.watch(currentUserAccountProvider).when(data: (user) {}, error: (error, st) {

      }, loading: () => ) const LoadingPage(),
    );
    );
  }
}
