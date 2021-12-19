import 'package:flutter/cupertino.dart';

class CreditCardUiContent extends StatelessWidget {
  const CreditCardUiContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mohamed Arshad",
                style: TextStyle(fontSize: 12),
              ),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/1280px-Visa_Inc._logo.svg.png",
                height: 16,
              )
            ],
          ),
          SizedBox(
            height: 32.0,
          ),
          Text(
            "0562 6589 2235 0030",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            "Balance Amount",
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 2.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$ 15,125"),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/800px-Mastercard_2019_logo.svg.png",
                height: 18,
              )
            ],
          ),
        ],
      ),
    );
  }
}
