// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get loginKeyButton => 'ANAHTARLA GİRİŞ';

  @override
  String get newUserButton => 'YENİ KULLANICI';

  @override
  String get securityWarning =>
      'ÖNEMLİ: Anahtarlarınızı güvenli bir yerde saklayın. Kaybederseniz Wenost onları kurtaramaz.';

  @override
  String get wenostTagline => 'MERKEZİYETSİZ • GÜVENLİ • GÜVENİLİR • YENİLİKÇİ';
}
