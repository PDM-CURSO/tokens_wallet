import 'package:flutter/material.dart';
import 'package:wallet/pages/home/item_token.dart';

class TokensSection extends StatelessWidget {
  const TokensSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Your tokens"),
            Text("Make changes"),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return ItemToken();
            },
          ),
        ),
      ],
    );
  }
}
