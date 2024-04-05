import 'package:flutter/material.dart';
import 'package:flutter_test_1/commpanents/actionButton.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
       padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(39, 40, 62, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionButton(
            icon: Icons.arrow_downward,
            onPressed: () {},
            label: 'Получить',
            rotationAngle: 45,
          ),
          ActionButton(
            icon: Icons.account_balance_wallet,
            onPressed: () {},
            label: 'Купить',
          ),
          ActionButton(
            icon: Icons.arrow_downward,
            onPressed: () {},
            label: 'Отправить',
            rotationAngle: -135,
          ),
        ],
      ),
    );
  }
}
