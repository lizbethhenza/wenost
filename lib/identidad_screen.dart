import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IdentidadScreen extends StatelessWidget {
  final String privateKey;
  final String publicKey;

  const IdentidadScreen({
    super.key,
    required this.privateKey,
    required this.publicKey,
  });

  void _copiar(BuildContext context, String texto, String tipo) {
    Clipboard.setData(ClipboardData(text: texto));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("¡$tipo copiada al portapapeles!"),
        backgroundColor: const Color(0xFF04033E),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
          Container(color: Colors.black.withValues(alpha: 0.6)),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.security, color: Colors.white, size: 80),
                  const SizedBox(height: 20),
                  const Text(
                    "TUS LLAVES SON ÚNICAS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  // ADVERTENCIA RECUPERADA
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "IMPORTANTE: Guarda tus llaves en un lugar seguro. Wenost no puede recuperarlas si las pierdes.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildKeyBox(context, "LLAVE PÚBLICA", publicKey, false),
                  const SizedBox(height: 20),
                  _buildKeyBox(context, "LLAVE PRIVADA", privateKey, true),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(82, 180, 202, 0.9),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      child: const Text("YA LAS GUARDÉ, CONTINUAR",
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

  Widget _buildKeyBox(
      BuildContext context, String label, String key, bool isPrivate) {
    final Color colorLlave =
        isPrivate ? const Color(0xFFFF5252) : const Color(0xFF40C4FF);

    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        children: [
          Text(label,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  key,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: colorLlave,
                    fontFamily: 'monospace',
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    shadows: const [
                      Shadow(
                          offset: Offset(0.5, 0.5),
                          blurRadius: 0.5,
                          color: Colors.black),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                icon: const Icon(Icons.copy, color: Colors.white70, size: 20),
                onPressed: () => _copiar(context, key, label),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
