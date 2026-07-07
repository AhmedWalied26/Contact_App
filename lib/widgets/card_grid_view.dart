import 'package:contact_app/widgets/card_item.dart';
import 'package:flutter/widgets.dart';

class CardGridView extends StatelessWidget {
  const CardGridView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1 / 1.55,
      ),
      itemBuilder: (context, index) => CardItem(),
      itemCount: 10,
    );
  }
}
