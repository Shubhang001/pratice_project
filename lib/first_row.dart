import 'package:flutter/material.dart';

class Firstrow extends StatelessWidget {
  const Firstrow({super.key});

  @override
  Widget build(BuildContext context) {
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
    return SizedBox(
      height: 275.0,
      width: 280.0,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.fromLTRB(16.0, 8.0, 6.0, 12.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 100.0,
                        width: 135.0,
                        child: Image.network(image1[index])),
                    const SizedBox(height: 3.0),
                    Text(
                      text1[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    const Text(
                      '7pcs,Price',
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 150.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "\$${4.99}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19.0),
                            ),
                            SizedBox(
                              height: 50.0,
                              width: 50.0,
                              child: FloatingActionButton(
                                elevation: 0.0,
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
