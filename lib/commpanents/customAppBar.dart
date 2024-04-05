import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight;

  CustomAppBar({this.appBarHeight = kToolbarHeight + 71});

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: appBarHeight,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
              ),
              padding: EdgeInsets.all(2),
              child: ClipOval(
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/ava.jpg'),
                ),
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bruce_Wayne',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'RSI',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(125, 126, 139, 1),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(125, 126, 139, 1),
                        borderRadius: BorderRadius.circular(6),
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
            Spacer(),
            SvgPicture.asset(
              'assets/images/notification.svg', // путь к вашему SVG файлу
              width: 20,
              height: 26,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
