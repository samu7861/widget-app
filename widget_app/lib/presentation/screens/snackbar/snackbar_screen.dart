import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = "snackbar_screen";

  void openDialog(BuildContext context) {

    showDialog(context:
    context,
    barrierDismissible: false, 
    builder: (context) =>  AlertDialog(
      title: const Text("estás seguro"),
      content: const Text("Qui quis labore anim adipisicing amet quis et anim. Ut mollit deserunt dolore ullamco ut duis. Ex laborum ea est aliquip in excepteur excepteur nulla deserunt reprehenderit proident Lorem enim veniam."),
      actions: [
        TextButton(onPressed: (){context.pop();}, child: const Text("cancelar")),
        FilledButton(onPressed: (){context.pop();}, child: const Text("aceptar"))
      ],
    ),);

  }

  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar =  SnackBar(
      content: const Text("hola mundo"),
      action: SnackBarAction(label: "okey", onPressed: () {}),
      duration: const Duration(seconds: 2),
      );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("snackbar"),
      ),

      floatingActionButton: FloatingActionButton.extended(
        
        label: const Text("mostrar snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context)
        ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(context: context,
              children: [
                  const Text("Do quis ullamco exercitation commodo officia consectetur fugiat consectetur deserunt. Consequat dolor et pariatur Lorem elit in elit eiusmod esse exercitation ipsum. Magna et cillum id est sint minim proident ipsum dolor ea consectetur nulla et et. Sunt in anim voluptate veniam adipisicing anim incididunt non. Laborum cupidatat in nostrud eu culpa occaecat ex qui occaecat minim magna culpa anim veniam. Ipsum et deserunt sunt voluptate ex id sit mollit do.")
                  ]
                );
            }, child: const Text("licencias usadas")),
            FilledButton.tonal(onPressed: (){
              openDialog(context);
            }, child: const Text("Mostrar dialogo"))
          ],
        ),
      ),
    );
  }
}