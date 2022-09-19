import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BalanceSection extends StatelessWidget {
  const BalanceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Total Balance:"),
        ListTile(
          title: Text("\$ 999.99"),
          trailing: FloatingActionButton.extended(
            label: Text("Add token"),
            icon: FaIcon(FontAwesomeIcons.sackDollar),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
