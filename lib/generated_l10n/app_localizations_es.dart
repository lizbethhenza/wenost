// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get loginKeyButton => 'INGRESAR CON LLAVE';

  @override
  String get newUserButton => 'NUEVO USUARIO';

  @override
  String get securityWarning =>
      'IMPORTANTE: Guarda tus llaves en un lugar seguro. Wenost no puede recuperarlas si las pierdes.';

  @override
  String get wenostTagline =>
      'RED DESCENTRALIZADA • SEGURA • CONFIABLE • INNOVADORA';
}
