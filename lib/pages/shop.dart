import 'package:flutter/material.dart';

import '../utility/shop_grid.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shop',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.0),),
              Row(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(width: 10.0),
                  Icon(Icons.menu),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Container(
                color: Colors.grey[300],
                padding: EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.grey[500],),
                    Container(
                        child: Text('Search',style: TextStyle(color: Colors.grey[500],),
                        )),
                  ],
                ),
              ),
            ),
          ),
          ShopGrid()
        ],
      ),
    );
  }
}
