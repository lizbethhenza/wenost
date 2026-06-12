// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginKeyButton => 'ENTER WITH KEY';

  @override
  String get newUserButton => 'NEW USER';

  @override
  String get securityWarning =>
      'IMPORTANT: Keep your keys in a safe place. Wenost cannot recover them if you lose them.';

  @override
  String get wenostTagline => 'DECENTRALIZED • SECURE • RELIABLE • INNOVATIVE';
}
