import 'package:flutter/material.dart';

import '../pages/drink_customize_page.dart';

class DrinkArguments {
  DrinkArguments({required this.idArg, required this.nameArg});
  final String idArg;
  final String nameArg;
}

class DrinkItem extends StatelessWidget {
  const DrinkItem({
    super.key,
    required this.drinkId,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  final String drinkId;
  final String name;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: GridTile(
        // no rounded corner support
        footer: GridTileBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            name,
            textAlign: TextAlign.center,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              DrinkCustomizePage.routeName,
              arguments: DrinkArguments(
                idArg: drinkId,
                nameArg: name,
              ),
            );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
