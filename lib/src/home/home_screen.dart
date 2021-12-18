// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cypto_design/src/home/credit_card.dart';
import 'package:cypto_design/src/home/transactions_list.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final backgroundColor = const Color(0xFF221873);
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    String date =
        "${today.year.toString()}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}";
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    Text(
                      "$date",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,           
                  children: [
                    Text(
                      "My Cards",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight:  FontWeight.w300,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.0,),
                CreditCard(),
                 SizedBox(height: 40.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,           
                  children: [
                    Text(
                      "Recent Transactions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight:  FontWeight.w300,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                TransactionsList()
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: backgroundColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: DecoratedIcon(
                Icons.home,
                color: Colors.white,
                shadows: [
                  BoxShadow(
                      blurRadius: 42.0,
                      color: Colors.white,
                      spreadRadius: 30.0),
                ],
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(Icons.account_balance_wallet),
                decoration: BoxDecoration(),
              ),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (_) => {},
        ),
      ),
    );
  }
}
