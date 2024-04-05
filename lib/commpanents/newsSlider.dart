import 'package:flutter/material.dart';

class NewsSlider extends StatefulWidget {
  @override
  _NewsSliderState createState() => _NewsSliderState();
}

class _NewsSliderState extends State<NewsSlider> {
  int _currentIndex = 0;

  final List<String> _newsTexts = [
    'Тинькофф выкупил заблокированные активы',
    'Coinbase зафиксировала убыток вдвое выше прогнозов',
    'Тинькофф выкупил заблокированные активы',
    'Coinbase зафиксировала убыток вдвое выше прогнозов',
    'Тинькофф выкупил заблокированные активы',
  ];

  final List<String> _backgroundImages = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image1.jpg',
  ];

  final List<String> _newsTimes = [
    '19 минут назад',
    '1 час назад',
    '19 минут назад',
    '1 час назад',
    '19 минут назад',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: _newsTexts.length,
              controller: PageController(
                  viewportFraction: 0.60), // Adjusted viewportFraction
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return _buildNewsCard(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(_backgroundImages[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(),
                  Text(
                    _newsTexts[index],
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Text(
              _newsTimes[index],
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
