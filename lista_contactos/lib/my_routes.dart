import 'package:lista_contactos/contact_list.dart';
import 'package:lista_contactos/contacto_page.dart';
import 'package:lista_contactos/home_page.dart';
import 'package:flutter/material.dart';

enum Routes { home, contacto, lista }

class MyRoutes {
  static final routes = {
    Routes.home.name: (BuildContext context) => const HomePage(),
    Routes.contacto.name: (BuildContext context) => const Contacto(),
    Routes.lista.name: (BuildContext context) => ContactList()
  };
}
