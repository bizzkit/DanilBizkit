import 'package:flutter/material.dart';
import 'package:flutter_test_1/commpanents/actionButtons.dart';
import 'package:flutter_test_1/commpanents/customAppBar.dart';
import 'package:flutter_test_1/commpanents/newsSlider.dart';
import 'package:flutter_test_1/commpanents/smartCard.dart';

class MarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Маркет кошелек',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white30,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_horiz, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '23423,6\$',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '+\$123,27',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.greenAccent,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'за месяц',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ActionButtons(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Новости',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'См. все',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 129,
              child: NewsSlider(),
            ),
            SizedBox(height: 20),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SmartIndexCard(
                    title: '1000 Smart INDEX',
                    price: 1140.00,
                    percentage: 1.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SmartIndexCard(
                    title: '1000 Smart INDEX',
                    price: 1140.00,
                    percentage: 1.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SmartIndexCard(
                    title: '1000 Smart INDEX',
                    price: 1140.00,
                    percentage: 1.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SmartIndexCard(
                    title: '1000 Smart INDEX',
                    price: 1140.00,
                    percentage: 1.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SmartIndexCard(
                    title: '1000 Smart INDEX',
                    price: 1140.00,
                    percentage: 1.2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SmartIndexCard(
                    title: '1000 Smart INDEX',
                    price: 1140.00,
                    percentage: 1.2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
