// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get loginKeyButton => 'MIT SCHLÜSSEL ANMELDEN';

  @override
  String get newUserButton => 'NEUER BENUTZER';

  @override
  String get securityWarning =>
      'WICHTIG: Bewahren Sie Ihre Schlüssel an einem sicheren Ort auf. Wenost kann sie nicht wiederherstellen, wenn Sie sie verlieren.';

  @override
  String get wenostTagline => 'DEZENTRAL • SICHER • ZUVERLÄSSIG • INNOVATIV';
}
