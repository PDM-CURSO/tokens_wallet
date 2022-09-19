import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemToken extends StatelessWidget {
  ItemToken({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: FaIcon(FontAwesomeIcons.litecoinSign),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("0xs8787"),
            Text("999.9 LTC"),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Moinet"),
            Text("\$899.12"),
          ],
        ),
      ),
    );
  }
}
