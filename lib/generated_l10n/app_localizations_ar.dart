// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get loginKeyButton => 'الدخول بالمفتاح';

  @override
  String get newUserButton => 'مستخدم جديد';

  @override
  String get securityWarning =>
      'هام: احتفظ بمفاتيحك في مكان آمن. لا يمكن لـ Wenost استعادتها إذا فقدتها.';

  @override
  String get wenostTagline => 'شبكة لا مركزية • آمنة • موثوقة • مبتكرة';
}
