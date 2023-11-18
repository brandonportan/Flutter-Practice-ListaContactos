import 'package:lista_contactos/card_list_item.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({super.key, required this.numero});
  final String numero;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: const Icon(Icons.phone_android_sharp),
          title: Text(this.numero),
          subtitle: const Text('Celular'),
          trailing: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.video_camera_front))
              ],
            ),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: ListItem(
                icono: Icons.android,
                texto: "Enviar mensaje a ${this.numero}")),
        TextButton(
            onPressed: () {},
            child: ListItem(
                icono: Icons.android, texto: "Llamar a ${this.numero}")),
        TextButton(
            onPressed: () {},
            child: ListItem(
                icono: Icons.android, texto: "Videollamar a ${this.numero}")),
        TextButton(
            onPressed: () {},
            child: ListItem(
                icono: Icons.telegram,
                texto:
                    "Mensaje al ${this.numero.replaceAll(' ', "").replaceAll("-", "")}")),
        TextButton(
            onPressed: () {},
            child: ListItem(
                icono: Icons.telegram,
                texto:
                    "Llamada de voz al ${this.numero.replaceAll(' ', "").replaceAll("-", "")}")),
        TextButton(
            onPressed: () {},
            child: ListItem(
                icono: Icons.telegram,
                texto:
                    "Videollamada al ${this.numero.replaceAll(' ', "").replaceAll("-", "")}")),
      ]),
    );
  }
}
