import 'package:flutter/material.dart';
import 'package:instagram/utility/bubble.dart';
import 'package:instagram/utility/user_post.dart';

class UserName extends StatelessWidget {
  final List people = [
    'ricardo',
    'dumdum',
    'bikbik',
    'punpun',
    'timtim',
    'busbus',
    'bhaubhau',
    'dimdim',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',style: TextStyle(color: Colors.black),),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context,index){
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context,index){
                return UserPosts(Name: people[index]);
                },
            ),
          ),
        ],
      )
    );
  }
}
