import 'package:flutter/material.dart';

class IdentidadScreen extends StatelessWidget {
  final String privateKey;
  final String publicKey;

  const IdentidadScreen(
      {super.key, required this.privateKey, required this.publicKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tu Identidad")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Privada: $privateKey"),
            Text("Pública: $publicKey"),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Volver"),
            ),
          ],
        ),
      ),
    );
  }
}
