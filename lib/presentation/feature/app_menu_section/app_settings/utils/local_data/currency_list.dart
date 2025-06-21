import 'package:expenso_expense_tracker/domain/models/app_menu_section/currency/currency_model.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';

final List<CurrencyModel> staticCurrencies = [
  CurrencyModel(code: 'INR', symbol: '₹', name: LocaleKeys.rupee),
  CurrencyModel(code: 'USD', symbol: '\$', name: LocaleKeys.dollar),
  CurrencyModel(code: 'EUR', symbol: '€', name: LocaleKeys.euro),
  CurrencyModel(code: 'GBP', symbol: '£', name: LocaleKeys.pound),
  CurrencyModel(code: 'JPY', symbol: '¥', name: LocaleKeys.yen),
  CurrencyModel(code: 'KRW', symbol: '₩', name: LocaleKeys.won),
  CurrencyModel(code: 'NGN', symbol: '₦', name: LocaleKeys.naira),
];
