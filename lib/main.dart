// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:dart_nostr/dart_nostr.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'identidad_screen.dart';
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
  final _storage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    _checkStoredKeys();
  }

  Future<void> _checkStoredKeys() async {
    final privateKey = await _storage.read(key: 'private_key');
    if (privateKey != null) {
      debugPrint("Llave encontrada en almacenamiento: $privateKey");
    }
  }

  Future<void> _generarLlaves(BuildContext context) async {
    final keyPair = Nostr.instance.keys.generateKeyPair();
    await _storage.write(key: 'private_key', value: keyPair.private);

    if (!mounted) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => IdentidadScreen(
          privateKey: keyPair.private,
          publicKey: keyPair.public,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

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
                      boxShadow: [
                        BoxShadow(
                          color: const Color.from(
                                  alpha: 1,
                                  red: 0.682,
                                  green: 0.616,
                                  blue: 0.941)
                              .withValues(alpha: 0.6),
                          blurRadius: 120,
                          spreadRadius: 3,
                        )
                      ],
                    ),
                    child: Image.asset('assets/icons/logo.png', width: 430),
                  ),
                  const SizedBox(height: 20),
                  _buildCintaEslogan(
                      localizations?.wenostTagline ?? "Bienvenido a Wenost"),
                  const SizedBox(height: 40),
                  _buildButton(localizations?.newUserButton ?? "NUEVO USUARIO",
                      () => _generarLlaves(context)),
                  const SizedBox(height: 10),
                  _buildButton(
                      localizations?.loginKeyButton ?? "INGRESAR CON LLAVE",
                      () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCintaEslogan(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      child: Text(
        text.toUpperCase(),
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w900,
          shadows: [
            Shadow(color: Colors.white, blurRadius: 10),
            Shadow(color: Colors.white, blurRadius: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(82, 180, 202, 0.8),
            foregroundColor: const Color.fromRGBO(6, 9, 15, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
