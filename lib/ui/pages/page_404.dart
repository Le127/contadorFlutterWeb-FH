import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

// Las Pages estan a modo de ejemplo. 
// Se utiliza Views para redibujar solo la parte  que queremos.
// De esta forma se evita reconstruir el AppMenu cuando no es necesario.

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "404",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("No se encontró la página",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            CustomFlatButton(
                text: "Regresar",
                onPressed: () => Navigator.pushNamed(context, "/stateful"))
          ],
        ),
      ),
    );
  }
}
