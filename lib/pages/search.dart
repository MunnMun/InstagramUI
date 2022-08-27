import 'package:flutter/material.dart';

import '../utility/Explore_grid.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            color: Colors.grey[400],
            padding: EdgeInsets.all(8.0),
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
      body: ExploreGrid(),
    );
  }
}
