import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 16.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 50.0,
              child: TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                    fillColor: Colors.grey,
                    labelText: "Search Store",
                    hintText: "Seach",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
