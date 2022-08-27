import 'package:flutter/material.dart';
import 'package:instagram/utility/account_tab1.dart';
import 'package:instagram/utility/bubble.dart';

import '../utility/account_tab2.dart';
import '../utility/account_tab3.dart';
import '../utility/account_tab4.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('237',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('3930',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('34',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MunnMunn',style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text('I make websites and apps',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Text('surround yourself with amazing people',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(2.0),
                         child: Container(
                          padding: EdgeInsets.all(5.0),
                          child: Center(child: Text('Edit Profile'),),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.0),
                  ),),
                       ),
                     ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Center(child: Text('Add Tools'),),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Center(child: Text('Insights'),),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  BubbleStories(text: 'Story 1'),
                  BubbleStories(text: 'Story 2'),
                  BubbleStories(text: 'Story 3'),
                  BubbleStories(text: 'Story 4'),
                ],
              ),
            ),

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.grid_3x3_outlined),),
                      Tab(icon: Icon(Icons.video_call),),
                      Tab(icon: Icon(Icons.shop),),
                      Tab(icon: Icon(Icons.person),),
                    ]
                ),
              ),

            Expanded(
                child: TabBarView(
                  children: [
                    AccountTab1(),
                    AccountTab2(),
                    AccountTab3(),
                    AccountTab4(),
                  ],
                )
            ),
          ],
        )
      ),
    );
  }
}
