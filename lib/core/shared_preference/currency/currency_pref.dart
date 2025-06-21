import 'dart:convert';
import 'package:expenso_expense_tracker/domain/models/app_menu_section/currency/currency_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CurrencyPref {
  static const _key = 'selectedCurrency';

  static Future<bool> setCurrency(CurrencyModel currency) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(_key, jsonEncode(currency.toJson()));
  }

  static Future<CurrencyModel?> getCurrency() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStr = prefs.getString(_key);
    if (jsonStr == null) return null;
    return CurrencyModel.fromJson(jsonDecode(jsonStr));
  }
}
