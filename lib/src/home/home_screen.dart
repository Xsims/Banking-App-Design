import 'package:cypto_design/src/home/credit_card/credit_card_ui_stack.dart';
import 'package:cypto_design/src/home/transactions_list.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
import 'home_screen_app_bar.dart';
import 'home_screen_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              HomeScreenAppBar(),
              CreditCardUiStack(),
              TransactionsList()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        items: getItems(_selectedIndex),
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }

  List<BottomNavigationBarItem> getItems(int selectedIndex) {
    return [
      BottomNavigationBarItem(
        icon: ShinyBottomNavBarIcon(
          isSelected: selectedIndex == 0,
          icon: Icons.home,
          ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: ShinyBottomNavBarIcon(
          isSelected: selectedIndex == 1,
          icon: Icons.bar_chart_rounded,
          ),
        label: 'Business',
      ),
      BottomNavigationBarItem(
        icon: ShinyBottomNavBarIcon(
          isSelected: selectedIndex == 2,
          icon: Icons.account_balance_wallet,
          ),
        label: 'School',
      ),
      BottomNavigationBarItem(
        icon: ShinyBottomNavBarIcon(
          isSelected: selectedIndex == 2,
          icon: Icons.account_circle,
          ),
        label: 'School',
      ),
    ];
  }

}
