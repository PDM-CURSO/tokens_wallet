import 'package:flutter/foundation.dart';

class TokensProvider with ChangeNotifier {
  List<dynamic> tokensList = [
    {
      "string": "0xfb324..32",
      "value": "366 LTC",
      "company": "Bitso",
      "exchange": "200k",
    }
  ];
  List<dynamic> get getTokensList => tokensList;

  //
  void addNewToken(dynamic tokenObj) async {
    tokensList.add(tokenObj);
    notifyListeners();
  }
}
