import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet/pages/home/home_page.dart';
import 'package:wallet/providers/tokens_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TokensProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green[900]!,
        ),
      ),
      home: HomePage(),
    );
  }
}
