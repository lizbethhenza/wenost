// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get loginKeyButton => 'ENTRER AVEC LA CLÉ';

  @override
  String get newUserButton => 'NOUVEL UTILISATEUR';

  @override
  String get securityWarning =>
      'IMPORTANT : Conservez vos clés dans un endroit sûr. Wenost ne peut pas les récupérer si vous les perdez.';

  @override
  String get wenostTagline =>
      'RÉSEAU DÉCENTRALISÉ • SÉCURISÉ • FIABLE • INNOVANT';
}
