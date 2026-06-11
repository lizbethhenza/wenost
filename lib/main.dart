import 'package:flutter/material.dart';
// MANTENEMOS ESTE IMPORT QUE YA SABEMOS QUE FUNCIONA
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

          // Interfaz principal con Stack para fondo y elementos
          return Scaffold(
            body: Stack(
              children: [
                // 1. Fondo: Imagen que cubre toda la pantalla
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/fondo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // 2. Contenido: Logo y Texto sobre el fondo
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/logo.png',
                        width: 250,
                      ),
                      const SizedBox(height: 40),
                      Text(
                        localizations.helloWorld,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
