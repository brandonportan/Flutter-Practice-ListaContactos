import 'package:lista_contactos/my_routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pagina Principal')),
      body: Container(
        alignment: Alignment.topCenter,
        child: ElevatedButton(
            child: const Text('Contacto'),
            onPressed: () =>
                Navigator.pushNamed(context, Routes.contacto.name)),
      ),
    );
  }
}
