import 'package:flutter/material.dart';
import 'package:practice/row.dart';
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
    List<String> image1 = [
      "https://img.freepik.com/premium-photo/fresh-banana-fruit-isolated-white-background-banana-clipping-path-fresh-organic-banana_299651-2182.jpg?w=740",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdDd-5BsRWcq6Gjt5Qql37XjR-oYJ9mMFaGA",
      "https://img.freepik.com/premium-photo/pineapple-isolated-white-background_88281-13.jpg",
    ];
    List<String> text1 = [
      "Organic Bananas",
      "Red Apples",
      "Pineapples",
    ];
    List<String> image2 = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqMXK-gkbsMecW1qmcC4qVOr6JHG2izwETaw",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVJm4BqvOxFm5jNbGHAGWWSqjfSASBJ3Uo7w",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrgurkVh8NZWN62gsXINEsoRHcg9KffgMf_Q",
    ];
    List<String> text2 = [
      "Red Chillies",
      "Gingers",
      "Fresh Tomatoes",
    ];
    List<String> image3 = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFpNg5hoFxtest4rgDgjeZVRcHJo1IJvDrrQ",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoaZMluJCbeYjwSWKtuzUoMoEdVtkXbP85Iw",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRessFVa80ty-WvkN7PDz56zbsQthmIxQSo8Q",
    ];
    List<String> text3 = [
      "Beef Bone",
      "Broiler Chicken",
      "Organic Eggs",
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
          //  const Firstrow(image1, text1),
          Firstrow(image1: image1, text1: text1),
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
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
          Firstrow(image1: image2, text1: text2),
          const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Groceries",
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
          SizedBox(
            height: 100.0,
            width: 350.0,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Card(
                      color: const Color.fromARGB(255, 244, 206, 156),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.fromLTRB(16.0, 8.0, 6.0, 12.0),
                      child: Container(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 10.0),
                        height: 85,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50.0,
                              width: 50.0,
                              child: Image.asset("assets/images/pulses.jpg"),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Pulses",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Firstrow(image1: image3, text1: text3)
        ],
      ),
    );
  }
}
