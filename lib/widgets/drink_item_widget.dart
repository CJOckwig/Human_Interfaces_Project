import 'dart:io';

import 'package:flutter/material.dart';
import '../pages/drink_customize_page.dart';

class DrinkArguments {
  DrinkArguments(
      {required this.idArg,
      required this.nameArg,
      required this.smallArg,
      required this.mediumArg,
      required this.largeArg});
  final String idArg;
  final String nameArg;
  final double smallArg;
  final double mediumArg;
  final double largeArg;
}

class DrinkItem extends StatelessWidget {
  const DrinkItem({
    super.key,
    required this.drinkId,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.smallPrice,
    required this.mediumPrice,
    required this.largePrice,
  });

  final String drinkId;
  final String name;
  final String description;
  final String imagePath;
  final double smallPrice;
  final double mediumPrice;
  final double largePrice;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            DrinkCustomizePage.routeName,
            arguments: DrinkArguments(
              idArg: drinkId,
              nameArg: name,
              smallArg: smallPrice,
              mediumArg: mediumPrice,
              largeArg: largePrice,
            ),
          );
        },
        child: Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Image(image: AssetImage(imagePath)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 24.0),
                          ),
                          Spacer(),
                          Text(
                            '\$${smallPrice.toStringAsFixed(2)} - \$${largePrice.toStringAsFixed(2)}',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )),
                  Expanded(
                    flex: 3,
                    child: Text(
                      description,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
