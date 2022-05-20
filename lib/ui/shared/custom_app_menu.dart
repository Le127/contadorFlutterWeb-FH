import 'package:flutter/material.dart';
import 'package:bases_web/services/navigator_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Si es mayor a 520 de ancho muestra la app como si estuviera en un Desktop.
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TableDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
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
            // onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/stateful"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Provider",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, "/provider"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/provider"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra página",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, "/abc123"),
            onPressed: () => locator<NavigationService>().navigateTo("/abc123"),
          )
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: "Contador Stateful",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, "/stateful"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/stateful"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Contador Provider",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, "/provider"),
            onPressed: () =>
                locator<NavigationService>().navigateTo("/provider"),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: "Otra página",
            color: Colors.black,
            // onPressed: () => Navigator.pushNamed(context, "/abc123"),
            onPressed: () => locator<NavigationService>().navigateTo("/abc123"),
          )
        ],
      ),
    );
  }
}
