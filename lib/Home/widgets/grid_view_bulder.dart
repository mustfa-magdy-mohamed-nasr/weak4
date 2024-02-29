import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewBulder extends StatelessWidget {
  const GridViewBulder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: AssetImage("assets/undraw_empty_cart_co35.png"),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: -3,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Text(
                'Shop',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[800],
                    fontSize: 24),
              ),
            ),
          );
        });
  }
}
