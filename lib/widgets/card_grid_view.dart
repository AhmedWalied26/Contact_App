import 'package:contact_app/models/contact_model.dart';
import 'package:contact_app/widgets/card_item.dart';
import 'package:flutter/widgets.dart';

class CardGridView extends StatelessWidget {
  const CardGridView({
    super.key,
    required this.contacts,
    required this.onDelete,
  });
  final List<ContactModel> contacts;
  final Function(int) onDelete;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1 / 1.55,
      ),
      itemBuilder: (context, index) => CardItem(
        onDeleteTap: () {
          onDelete(index);
        },
        contacts: contacts,
        contact: contacts[index],
      ),
      itemCount: contacts.length,
    );
  }
}
