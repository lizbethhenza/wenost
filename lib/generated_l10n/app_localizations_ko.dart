// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get loginKeyButton => '키로 로그인';

  @override
  String get newUserButton => '새 사용자';

  @override
  String get securityWarning =>
      '중요: 키를 안전한 곳에 보관하십시오. 분실 시 Wenost는 복구할 수 없습니다.';

  @override
  String get wenostTagline => '분산화 • 안전 • 신뢰 • 혁신';
}
