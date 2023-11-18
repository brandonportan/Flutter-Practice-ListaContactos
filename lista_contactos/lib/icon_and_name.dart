import 'package:flutter/material.dart';

class IconAndName extends StatelessWidget {
  const IconAndName({super.key, required this.icono, required this.texto});

  final IconData icono;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(this.icono)),
        const SizedBox(height: 5),
        Text(this.texto)
      ],
    );
  }
}
