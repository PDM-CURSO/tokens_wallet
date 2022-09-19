import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              onPressed: () {},
            ),
          ),
          ElevatedButton(
            onPressed: () {},
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
