import 'package:cypto_design/src/home/tansactions/transaction.dart';
import 'package:flutter/material.dart';

import 'transaction_item.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    Key? key,
    this.items = const [
      Transaction("Paypal", "- \$ 47.04", "5 August", "Transfer",
          "https://hellowilla.co/wp-content/uploads/2019/05/paypal.png"),
      Transaction("Dribbble", "- \$ 50.00", "2 August", "Subscription",
          "https://www.stampaprint.fr/blog/wp-content/uploads/2016/05/logo-dribbble2.png"),
      Transaction("Behance", "- \$ 50.00", "1 August", "Subscription",
          "https://cdn-icons-png.flaticon.com/512/145/145799.png"),
      Transaction("Youtube", "- \$ 40.00", "30 July", "Subscription",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/YouTube_social_white_squircle.svg/800px-YouTube_social_white_squircle.svg.png"),
      Transaction("Paypal", "- \$ 32.50", "25 July", "Transfer",
          "https://hellowilla.co/wp-content/uploads/2019/05/paypal.png"),
      Transaction("Dribbble", "- \$ 50.00", "2 July", "Subscription",
          "https://www.stampaprint.fr/blog/wp-content/uploads/2016/05/logo-dribbble2.png"),
      Transaction("Behance", "- \$ 50.00", "1 July", "Subscription",
          "https://cdn-icons-png.flaticon.com/512/145/145799.png"),
    ],
  }) : super(key: key);

  final List<Transaction> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: const [
            Text(
              "Recent Transactions",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "See all",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        ListView.builder(
          // Providing a restorationId allows the ListView to restore the
          // scroll position when a user leaves and returns to the app after it
          // has been killed while running in the background.
          restorationId: 'sampleItemListView',
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            final item = items[index];

            return TransactionItem(
              company: item.company,
              price: item.price,
              date: item.date,
              type: item.type,
              imageUrl: item.imageUrl,
            );
          },
        ),
      ],
    );
  }
}
