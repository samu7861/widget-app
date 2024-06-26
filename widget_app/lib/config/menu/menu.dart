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
    icon: Icons.refresh_outlined),

    MenuItems(
    title: "Snackbars", 
    subTitle: "indicadores en pantalla", 
    link: "/snackbars", 
    icon: Icons.info_outline),

    MenuItems(
    title: "animated container", 
    subTitle: "Statefull widget animado", 
    link: "/animated", 
    icon: Icons.check_box_outline_blank_outlined),

    MenuItems(
    title: "UI-controls + tiles", 
    subTitle: "control de ui", 
    link: "/ui-controls", 
    icon: Icons.car_rental_outlined),

    MenuItems(
    title: "Tutorial", 
    subTitle: "intro a nuestra app", 
    link: "/tutorial", 
    icon: Icons.accessibility_new_rounded),
];