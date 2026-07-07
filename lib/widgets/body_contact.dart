import 'package:contact_app/widgets/card_grid_view.dart';
import 'package:flutter/material.dart';

class BodyContact extends StatelessWidget {
  const BodyContact({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(padding: const EdgeInsets.all(16), child: CardGridView());
  }
}
