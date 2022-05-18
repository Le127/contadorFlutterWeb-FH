import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: "Contador Stateful",
              color: Colors.black,
              onPressed: () => Navigator.pushNamed(context, "/stateful")),
          const SizedBox(width: 10),
          CustomFlatButton(
              text: "Contador Provider",
              color: Colors.black,
              onPressed: () => Navigator.pushNamed(context, "/provider")),
          const SizedBox(width: 10),
          CustomFlatButton(
              text: "Otra página",
              color: Colors.black,
              onPressed: () => Navigator.pushNamed(context, "/abc123"))
        ],
      ),
    );
  }
}
