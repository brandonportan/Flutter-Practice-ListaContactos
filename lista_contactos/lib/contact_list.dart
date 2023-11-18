import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lista_contactos/my_routes.dart';

class ContactList extends StatelessWidget {
  ContactList({super.key});

  final List<Map<String, dynamic>> contactos = [
    {
      'Nombre': "Brandon Portan",
      'Telefono': "988516",
      'Correo': "brandon.portan@unah.hn"
    },
    {
      'Nombre': "Mandon Sta",
      'Telefono': "192529",
      'Correo': "mandon.sta@unah.hn"
    },
    {
      'Nombre': "Srandon Porlan",
      'Telefono': "51911623",
      'Correo': "srandon.porlan@unah.hn"
    },
    {
      'Nombre': "Don Ortan",
      'Telefono': "5165198",
      'Correo': "don.ortana@unah.hn"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Contactos"),
      ),
      body: ListView.builder(
          itemCount: contactos.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Text(contactos[index]['Nombre'].toString()[0],
                    style: const TextStyle(color: Colors.white)),
              ),
              title: Text(contactos[index]['Nombre']),
              onTap: () {
                Navigator.pushNamed(context, Routes.contacto.name,
                    arguments: contactos[index]);
              },
            );
          }),
    );
  }
}
