import 'package:flutter/material.dart';
import 'package:practice/First_row.dart';
import 'package:practice/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "https://www.arkasoftwares.com/blog/wp-content/uploads/2022/03/Grocery-Delivery-Mobile-App-Development.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnD2gqUCg9C0Ek3W_Q4518PJUYpOURS1wjDuDMdXuHdWYREjlht1NwyChW0EJv0Lk8cy8",
      "https://media.istockphoto.com/id/1479952169/vector/vector-online-grocery-store-banner-template-fresh-products-on-green-background-horizontal.jpg?s=1024x1024&w=is&k=20&c=jsqc3QtmvBWhc68v2g83vRM2ttc8AWNkDuEymsvlZtc=",
    ];

    return SafeArea(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(32, 26, 32, 8),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '🥕',
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(120.0, 0.0, 120.0, 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text("Noida,Up"),
              ],
            ),
          ),
          const Searchbar(),
          SizedBox(
            height: 150,
            width: 250,
            child: PageView.builder(
                itemCount: 3,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.network(image[pagePosition]));
                }),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exclusive Offer",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 17.0,
                  ),
                )
              ],
            ),
          ),
          const Firstrow(),
        ],
      ),
    );
  }
}
