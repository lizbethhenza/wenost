// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get loginKeyButton => 'हमारी कुंजी के साथ प्रवेश करें';

  @override
  String get newUserButton => 'नया उपयोगकर्ता';

  @override
  String get securityWarning =>
      'महत्वपूर्ण: अपनी कुंजियों को सुरक्षित स्थान पर रखें। यदि आप उन्हें खो देते हैं तो Wenost उन्हें पुनर्प्राप्त नहीं कर सकता है।';

  @override
  String get wenostTagline => 'विकेंद्रीकृत • सुरक्षित • विश्वसनीय • अभिनव';
}
