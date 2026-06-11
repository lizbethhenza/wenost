import 'package:flutter/material.dart';
import 'package:dart_nostr/dart_nostr.dart';
import 'generated_l10n/app_localizations.dart';

void main() {
  runApp(const WenostApp());
}

class WenostApp extends StatelessWidget {
  const WenostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Wenost',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: WenostScreen(),
    );
  }
}

class WenostScreen extends StatefulWidget {
  const WenostScreen({super.key});

  @override
  State<WenostScreen> createState() => _WenostScreenState();
}

class _WenostScreenState extends State<WenostScreen> {
  final TextEditingController _keyController = TextEditingController();

  // Función única y bien definida
  void _generarLlaves(BuildContext context) {
    // La forma correcta de generar llaves en la versión 10+
    final keyPair = Nostr.instance.keys.generateKeyPair();

    // Accedemos a la propiedad .private y .public que contienen el string
    debugPrint("Privada: ${keyPair.private}");
    debugPrint("Pública: ${keyPair.public}");

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("¡Identidad creada! Revisa la consola."),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    if (localizations == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withValues(alpha: 0.5),
                            spreadRadius: 10,
                            blurRadius: 20)
                      ],
                    ),
                    child: Image.asset('assets/icons/logo.png', width: 200),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 200,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(localizations.wenostTagline,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900)),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: _keyController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 186, 194, 225)
                            .withValues(alpha: 0.2),
                        hintText: 'Clave privada',
                        hintStyle: const TextStyle(color: Colors.white70),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => _generarLlaves(context),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blueAccent),
                      child: const Text("CREAR",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
