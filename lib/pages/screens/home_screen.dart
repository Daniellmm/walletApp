import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_project/contants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: white,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Center(
            child: Row(
              children: [
                Text(
                  'Pay',
                  style: TextStyle(
                      color: purple, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Me',
                  style: TextStyle(
                      color: green, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none_sharp,
              color: white,
            ),
            onPressed: () {},
          ),
          const SizedBox(
              width:
                  8), // To ensure the title stays centered with equal padding on both sides
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: lightpurple,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              color: white,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              "PayMe \nBalance",
                              style: TextStyle(color: white, fontSize: 11),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "\$ 16,003.00",
                          style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          // margin: EdgeInsets.all(10),
                          // height: 25,
                          // width: 95,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.4),
                              borderRadius: BorderRadius.circular(14)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: white,
                                    size: 17,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Add Money",
                                    style:
                                        TextStyle(color: white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: glass,
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Icon(
                          Icons.file_upload_outlined,
                          color: Colors.amber[400],
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Send",
                      style: TextStyle(color: white, fontSize: 13),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: glass,
                          borderRadius: BorderRadius.circular(16)),
                      child: const Center(
                        child: Icon(
                          Icons.file_download_outlined,
                          color: Colors.pink,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Receive",
                      style: TextStyle(color: white, fontSize: 13),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: glass,
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Icon(
                          Icons.replay_rounded,
                          color: green,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "History",
                      style: TextStyle(color: white, fontSize: 13),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: glass,
                          borderRadius: BorderRadius.circular(16)),
                      child: const Center(
                        child: Icon(
                          Icons.account_balance_outlined,
                          color: Colors.lightBlue,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "A/c Balance",
                      style: TextStyle(color: white, fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    width: 300,
                    decoration: BoxDecoration(
                      color: lightpurple,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 15),
                      child: Row(
                        children: [
                          Center(
                              child: Icon(
                            CupertinoIcons.bubble_left_fill,
                            color: green,
                            size: 43,
                          )),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cashback 100%",
                                style: TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "Invite your friend and get Cashback",
                                style: TextStyle(color: white, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 13),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: glass),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 15),
                      child: Row(
                        children: [
                          Center(
                              child: Icon(
                            CupertinoIcons.bubble_left_fill,
                            color: green,
                            size: 43,
                          )),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cashback 100%",
                                style: TextStyle(
                                    color: green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                "Invite your friend and get Cashback",
                                style: TextStyle(color: white, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           
            Container(
              height: MediaQuery.sizeOf(context).height *.4,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: glass,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Center(
                    child: Text(
                      "PayMe Services",
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  
                  Center(
                    child: Container(
                      height: 3,
                      width: 17,
                      color: white,
                    ),
                  ),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.phone_android,
                            color: green,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Recharge",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.wifi_tethering,
                            color: green,
                          ),
                         
                          Text(
                            "Data",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.book_sharp,
                            color: green,
                          ),
                          
                          Text(
                            "Bookshop",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.wifi,
                            color: green,
                          ),
                          
                          Text(
                            "Wifi",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                    ],
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.movie_creation_outlined,
                            color: green,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Movies",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.store_mall_directory_outlined,
                            color: green,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Store",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.food_bank_outlined,
                            color: green,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Cafe",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.more_horiz,
                            color: green,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "More",
                            style: TextStyle(color: white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}