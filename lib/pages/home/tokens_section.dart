import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet/pages/home/item_token.dart';
import 'package:wallet/providers/tokens_provider.dart';

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
            itemCount: context.watch<TokensProvider>().tokensList.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemToken(
                tokenObj: context.read<TokensProvider>().tokensList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
