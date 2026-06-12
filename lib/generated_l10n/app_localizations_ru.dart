// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get loginKeyButton => 'ВОЙТИ С КЛЮЧОМ';

  @override
  String get newUserButton => 'НОВЫЙ ПОЛЬЗОВАТЕЛЬ';

  @override
  String get securityWarning =>
      'ВАЖНО: Храните ключи в безопасном месте. Wenost не сможет восстановить их, если вы их потеряете.';

  @override
  String get wenostTagline =>
      'ДЕЦЕНТРАЛИЗОВАННАЯ • БЕЗОПАСНАЯ • НАДЕЖНАЯ • ИННОВАЦИОННАЯ';
}
