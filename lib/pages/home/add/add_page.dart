import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:wallet/providers/tokens_provider.dart';

class AddPage extends StatefulWidget {
  AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  var _tokenController = TextEditingController(text: UniqueKey().toString());
  var _tokenValueController = TextEditingController();
  var _companyController = TextEditingController();
  var _moneyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _editableTextInput(_tokenController, "Token String"),
          _editableTextInput(_tokenValueController, "Token Value"),
          _editableTextInput(_companyController, "Company"),
          _editableTextInput(_moneyController, "Money exchange"),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Pick an Icon"),
            trailing: IconButton(
              icon: FaIcon(FontAwesomeIcons.crosshairs),
              onPressed: () {
                // TODO
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<TokensProvider>().addNewToken({
                "string": _tokenController.text,
                "value": _tokenValueController.text,
                "company": _companyController.text,
                "exchange": _moneyController.text,
              });
            },
            child: Text("Guardar"),
          ),
          TextButton(
            child: Text("Cancelar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  // _pickIcon(BuildContext context) async {
  //   var listIcons = [
  //     FontAwesomeIcons.bitcoin,
  //     FontAwesomeIcons.litecoinSign,
  //     FontAwesomeIcons.ethereum,
  //     FontAwesomeIcons.aws,
  //     FontAwesomeIcons.apple,
  //     FontAwesomeIcons.meta,
  //   ];
  //   int selectedIcon = 0;
  //   return await showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           content: GridView.builder(
  //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //               crossAxisCount: 3,
  //             ),
  //             itemCount: 6,
  //             itemBuilder: (BuildContext context, int index) {
  //               return FaIcon(listIcons[index]);
  //             },
  //           ),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text("Cancelar"),
  //             ),
  //             ElevatedButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop(listIcons[selectedIcon]);
  //               },
  //               child: Text("Aceptar"),
  //             ),
  //           ],
  //         );
  //       });
  // }

  Widget _editableTextInput(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text(label),
      ),
    );
  }
}
