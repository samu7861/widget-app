import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({required this.title, required this.subTitle, required this.link, required this.icon});

}
const listMenu = <MenuItems>[
  MenuItems(
    title: "Botones", 
    subTitle: "varios botones", 
    link: "/buttons", 
    icon: Icons.smart_button_outlined),

    MenuItems(
    title: "Tarjeta", 
    subTitle: "Un contenedor estilizado", 
    link: "/cards", 
    icon: Icons.credit_card),

    MenuItems(
    title: "Progress indicator", 
    subTitle: "controlled and infinite", 
    link: "/progress", 
    icon: Icons.credit_card)
];