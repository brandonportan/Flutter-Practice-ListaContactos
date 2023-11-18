import 'package:lista_contactos/card.dart';
import 'package:lista_contactos/icon_and_name.dart';
import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    final info =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                info['Nombre'].toString()[0],
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(info['Nombre'].toString(), style: const TextStyle(fontSize: 16)),
          Text(info['Correo'].toString(), style: const TextStyle(fontSize: 12)),
          const Divider(height: 50),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconAndName(icono: Icons.phone_sharp, texto: "Llamar"),
              IconAndName(
                icono: Icons.message,
                texto: "Mensaje de Texto",
              ),
              IconAndName(icono: Icons.video_camera_front, texto: "Video")
            ],
          ),
          const Divider(height: 50),
          CardList(numero: info['Telefono'].toString())
        ]),
      ),
    );
  }
}
