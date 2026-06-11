import 'package:flutter/material.dart';
// Importamos directamente desde la carpeta donde el generador deposita los archivos
import 'generated_l10n/app_localizations.dart';

void main() {
  runApp(const WenostApp());
}

class WenostApp extends StatelessWidget {
  const WenostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wenost',

      // Conectamos los delegados para el soporte multilingüe
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // Usamos un Builder para garantizar que el contexto tenga acceso a las localizaciones
      home: Builder(
        builder: (context) {
          final localizations = AppLocalizations.of(context);

          // Estado de carga o espera mientras las traducciones se inyectan
          if (localizations == null) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          // Interfaz principal una vez cargado el motor de idiomas
          return Scaffold(
            appBar: AppBar(
              title: const Text('Wenost'),
            ),
            body: Center(
              child: Text(
                localizations.helloWorld,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
