import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "https://www.arkasoftwares.com/blog/wp-content/uploads/2022/03/Grocery-Delivery-Mobile-App-Development.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnD2gqUCg9C0Ek3W_Q4518PJUYpOURS1wjDuDMdXuHdWYREjlht1NwyChW0EJv0Lk8cy8",
      "https://media.istockphoto.com/id/1479952169/vector/vector-online-grocery-store-banner-template-fresh-products-on-green-background-horizontal.jpg?s=1024x1024&w=is&k=20&c=jsqc3QtmvBWhc68v2g83vRM2ttc8AWNkDuEymsvlZtc=",
    ];

    List<String> images1 = [
      "https://media.istockphoto.com/id/173242750/photo/banana-bunch.jpg?s=612x612&w=0&k=20&c=MAc8AXVz5KxwWeEmh75WwH6j_HouRczBFAhulLAtRUU=",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe9beuq52MMhJ77Du9c-g6aXgKlnnNNKzgsA",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEJKsP8A5-wRAFOFxOPY9qvZcEjrEIBSl-uA",
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
          const SearchBar(),
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
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 0.0),
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
          /*SafeArea(
            child: ListView(scrollDirection: Axis.horizontal, 
            children: [
              Card(
                
                child: ListTile(
                    leading: Image.network(images1[0]),
                    title: const Text("Organic Bananas"),
                    subtitle: const Text('7pcs,Price'),
                    trailing: const Text("\$${4.99}",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              Card(
                child: ListTile(
                    leading: Image.network(images1[0]),
                    title: const Text("Organic Bananas"),
                    subtitle: const Text('7pcs,Price'),
                    trailing: const Text("\$${4.99}",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              Card(
                child: ListTile(
                    leading: Image.network(images1[0]),
                    title: const Text("Organic Bananas"),
                    subtitle: const Text('7pcs,Price'),
                    trailing: const Text("\$${4.99}",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ))),
              ),)),*/
          Card(
              child: GridTile(
            child: Image.asset("assets/images/bananas.jpg"),
          ))
        ],
      ),
    );
  }
}
