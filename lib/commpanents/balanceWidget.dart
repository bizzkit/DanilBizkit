import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '23423,6\$',
              style: TextStyle(
                /*fontFamily: 'Raleway',*/
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  '+\$123,27',
                  style: TextStyle(
                    /*fontFamily: 'Raleway',*/
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.greenAccent,
                  ),
                ),
                SizedBox(width: 5), // Пространство между текстами
                Text(
                  'за месяц',
                  style: TextStyle(
                    fontFamily: 'Raleway',
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
    );
  }
}
