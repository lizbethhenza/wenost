// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get loginKeyButton => 'ENTRAR COM CHAVE';

  @override
  String get newUserButton => 'NOVO USUÁRIO';

  @override
  String get securityWarning =>
      'IMPORTANTE: Guarde suas chaves em um local seguro. O Wenost não pode recuperá-las se você as perder.';

  @override
  String get wenostTagline =>
      'REDE DESCENTRALIZADA • SEGURA • CONFIÁVEL • INOVADORA';
}
