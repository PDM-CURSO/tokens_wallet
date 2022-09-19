import 'package:flutter/material.dart';
import 'package:wallet/pages/home/balance_section.dart';
import 'package:wallet/pages/home/tokens_section.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(color: Colors.green[800]),
          Column(
            children: [
              BalanceSection(),
              Divider(),
              Expanded(child: TokensSection()),
            ],
          ),
        ],
      ),
    );
  }
}
