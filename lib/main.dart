import 'package:flutter/material.dart';
// IMPORTANTE: Asegúrate de que esta ruta coincida con la ubicación de tu carpeta de generación
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

      // Conectamos los delegados para el soporte multilingüe de los 12 idiomas
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      home: Builder(
        builder: (context) {
          final localizations = AppLocalizations.of(context);

          // Estado de carga mientras las localizaciones se cargan
          if (localizations == null) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

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

                // 2. Contenido: Logo con Resplandor y Eslogan
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo con efecto de resplandor blanco
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withValues(alpha: 0.5),
                              spreadRadius: 10,
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/icons/logo.png',
                          width: 250,
                        ),
                      ),

                      const SizedBox(height: 50),

                      // Eslogan con fondo blanco y letras negras
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white, // Fondo blanco sólido
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withValues(alpha: 0.8),
                                spreadRadius: 5,
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Text(
                            localizations.wenostTagline,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color:
                                  Colors.black, // Letras negras para contraste
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.2,
                            ),
                          ),
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
