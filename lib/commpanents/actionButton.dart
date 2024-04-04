import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String label;
  final double rotationAngle;

  const ActionButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.label,
    this.rotationAngle = 0, // Угол поворота по умолчанию
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: Colors.white10,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Transform.rotate(
              angle: rotationAngle *
                  3.1415926535 /
                  180, // Преобразование угла в радианы
              child: Icon(icon, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
      ],
    );
  }
}
