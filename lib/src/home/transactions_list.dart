import 'package:cypto_design/src/sample_feature/sample_item.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    Key? key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
  }) : super(key: key);

  final List<SampleItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
            title: Text('SampleItem ${item.id}'),
            leading: const CircleAvatar(
              // Display the Flutter Logo image asset.
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
          );
        },
      ),
    );
  }
}
