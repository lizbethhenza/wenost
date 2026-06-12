// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get loginKeyButton => '鍵でログイン';

  @override
  String get newUserButton => '新規ユーザー';

  @override
  String get securityWarning => '重要：鍵は安全な場所に保管してください。紛失した場合、Wenostは復元できません。';

  @override
  String get wenostTagline => '分散型 • 安全 • 信頼性 • 革新的';
}
