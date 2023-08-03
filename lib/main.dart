import 'package:flutter/material.dart';
import 'package:practice/pages/account_page.dart';
import 'package:practice/pages/cart.dart';
import 'package:practice/pages/explore.dart';
import 'package:practice/pages/favourite.dart';
import 'package:practice/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

List pages1 = [
  const HomeScreen(),
  const ExplorePage(),
  const CartPage(),
  const Favourite(),
  const AccountPage(),
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => MainData();
}

class MainData extends State<StatefulWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: pages1[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              currentIndex: currentIndex,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.manage_search), label: "Explore"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline), label: "Favourite"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box_outlined), label: "Account"),
              ]),
        ));
  }
}
