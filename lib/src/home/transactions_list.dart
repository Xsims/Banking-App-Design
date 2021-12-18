import 'package:cypto_design/src/sample_feature/sample_item.dart';
import 'package:flutter/material.dart';

import 'transaction_item.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    Key? key,
    this.items = const [
      SampleItem("Paypal", "- \$ 47.04", "5 August", "Transfer",
          "https://hellowilla.co/wp-content/uploads/2019/05/paypal.png"),
      SampleItem("Dribbble", "- \$ 50.00", "2 August", "Subscription",
          "https://www.stampaprint.fr/blog/wp-content/uploads/2016/05/logo-dribbble2.png"),
      SampleItem("Behance", "- \$ 50.00", "1 August", "Subscription",
          "https://cdn-icons-png.flaticon.com/512/145/145799.png"),
      SampleItem("Youtube", "- \$ 40.00", "30 July", "Subscription",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/YouTube_social_white_squircle.svg/800px-YouTube_social_white_squircle.svg.png"),
    ],
  }) : super(key: key);

  final List<SampleItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      child: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return TransactionItem(company: item.company, price: item.price, date: item.date, type: item.type, imageUrl: item.imageUrl,);
        },
      ),
    );
  }
}
