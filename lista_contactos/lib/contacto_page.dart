import 'package:lista_contactos/card.dart';
import 'package:lista_contactos/icon_and_name.dart';
import 'package:flutter/material.dart';

class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text(
                'B',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),
          ),
          SizedBox(height: 50),
          Text('Brandon'),
          Divider(height: 50),
          Row(
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
          Divider(height: 50),
          CardList(numero: "+504 9762-6018")
        ]),
      ),
    );
  }
}
