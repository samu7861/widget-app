import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + material3'),
      ),
      body:const _HomeView(listMenu),
    );
  }
}

class _HomeView extends StatelessWidget {

  final List<MenuItems> listMenu;

  const _HomeView(this.listMenu);

  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listMenu.length,
      itemBuilder: (context, index) {
        return CustomListTile(listMenu: listMenu[index]);
      },
      );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.listMenu,
  });

  final MenuItems listMenu;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(listMenu.title),
      subtitle: Text(listMenu.subTitle),
      leading: Icon(listMenu.icon),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      onTap: () {
        context.push(listMenu.link);
      },
    );
  }
}