import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> filters = ['All', 'Addidas', 'Nike', 'Bata'];

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Shoes\nCollections',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: filters.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Chip(
                      backgroundColor: const Color.fromRGBO(245, 247, 249, 1),
                      side: const BorderSide(
                        color: Color.fromRGBO(245, 247, 249, 1),
                      ),
                      label: Text(filter),
                      labelStyle: const TextStyle(
                        fontSize: 16,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.horizontal(
                          start: Radius.circular(20),
                          end: Radius.circular(20),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
