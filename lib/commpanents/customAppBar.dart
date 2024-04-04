import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/ava.jpg'),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bruce_Wayne',
                style: TextStyle(
                  fontFamily: 'Raleway',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    'RSI',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(125, 126, 139, 1)),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(125, 126, 139, 1), // Прозрачный фон
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6),
                      ),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      'Classic',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(39, 40, 62, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_none_sharp, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
