/// A placeholder class that represents an entity or model.
// ignore_for_file: prefer_const_constructors

class Transaction {
  const Transaction(this.company, this.price, this.date, this.type, this.imageUrl);

  final String company;
  final String price;
  final String date;
  final String type;
  final String imageUrl;
}
