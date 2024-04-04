import 'package:flutter/material.dart';

class SmartIndexCard extends StatelessWidget {
  final String title;
  final double price;
  final double percentage;

  const SmartIndexCard({
    Key? key,
    required this.title,
    required this.price,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(39, 40, 62, 1), // Вернули предыдущий цвет
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF63838A),
                                Color(0xFF8F876A),
                              ],
                            ),
                          ),
                          child: Icon(Icons.attach_money,
                              color: Colors.white), // Иконка
                        ),
                        SizedBox(
                            width: 8), // Расстояние между иконкой и текстом
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                /*fontFamily: 'Raleway',*/
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$$price',
                              style: TextStyle(
                                /*fontFamily: 'Raleway',*/
                                color: Colors.white
                                    .withOpacity(0.5), // Затемненный цвет
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '87.3009 \$',
                          style: TextStyle(
                            /*fontFamily: 'Raleway',*/
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '$percentage\%',
                          style: TextStyle(
                            /*fontFamily: 'Raleway',*/
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
