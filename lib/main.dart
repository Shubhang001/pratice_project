import 'package:flutter/material.dart';
import 'package:practice/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: const HomeScreen(),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.store), label: "Shop"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.manage_search), label: "Explore"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "Favourite"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box), label: "Account"),
              ]),
        ));
  }
}
