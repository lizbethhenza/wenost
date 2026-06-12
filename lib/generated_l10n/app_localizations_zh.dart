// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get loginKeyButton => '使用密钥登录';

  @override
  String get newUserButton => '新用户';

  @override
  String get securityWarning => '重要提示：请将您的密钥保存在安全的地方。如果您丢失了密钥，Wenost 无法找回。';

  @override
  String get wenostTagline => '去中心化 • 安全 • 可靠 • 创新';
}
