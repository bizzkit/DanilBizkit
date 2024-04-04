import 'package:flutter/material.dart';
import 'package:flutter_test_1/commpanents/actionButtons.dart';
import 'package:flutter_test_1/commpanents/balanceWidget.dart';
import 'package:flutter_test_1/commpanents/customAppBar.dart';
import 'package:flutter_test_1/commpanents/marketHeader.dart';
import 'package:flutter_test_1/commpanents/newsSlider.dart';
import 'package:flutter_test_1/commpanents/smartCard.dart';

class MarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.zero, // Установка нулевого отступа
                  child: MarketHeader(),
                ),
                BalanceWidget(),
                SizedBox(height: 10),
                ActionButtons(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Новости',
                      style: TextStyle(
                        fontFamily: 'Raleway',
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
                            fontFamily: 'Raleway',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward, color: Colors.white),
                          onPressed: () {
                            // Действие, которое происходит при нажатии на стрелочку
                          },
                        ),
                      ],
                    ),
                  ],
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
                    SmartIndexCard(
                      title: '1000 Smart INDEX',
                      price: 1140.00,
                      percentage: 1.2,
                    ),
                    SmartIndexCard(
                      title: '1000 Smart INDEX',
                      price: 1140.00,
                      percentage: 1.2,
                    ),
                    SmartIndexCard(
                      title: '1000 Smart INDEX',
                      price: 1140.00,
                      percentage: 1.2,
                    ),
                    SmartIndexCard(
                      title: '1000 Smart INDEX',
                      price: 1140.00,
                      percentage: 1.2,
                    ),
                    SmartIndexCard(
                      title: '1000 Smart INDEX',
                      price: 1140.00,
                      percentage: 1.2,
                    ),
                    SmartIndexCard(
                      title: '1000 Smart INDEX',
                      price: 1140.00,
                      percentage: 1.2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
