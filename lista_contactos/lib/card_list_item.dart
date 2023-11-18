import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.icono, required this.texto});

  final IconData icono;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(this.icono),
      title: Text(this.texto),
    );
  }
}
