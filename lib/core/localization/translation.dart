import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {'1': 'أختر اللغة'},
        'en': {'1': 'Choose Lnaguage'},
        // 'ar': {'2': 'مرحبا بعودتك'},
        // 'en': {'2': 'Welcome Back'}
      };
}
