import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String Name;

  UserPosts({required this.Name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(Name,style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(Name,style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Text(' and '),
              Text(' others ',style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: Name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ' Lying in a bed of greed, You know I had the strangest dream'
                  ),
                ]
              ),
          ),
        )
      ],
    );
  }
}
