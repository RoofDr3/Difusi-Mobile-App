import 'package:flutter/material.dart';

import 'core/theme/theme.dart';
import 'features/auth/view/pages/loginpages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.OrangeMode,
      home: const LoginPages(),
    );
  }
}
