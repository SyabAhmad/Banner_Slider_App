import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _bannerSlider createState() => _bannerSlider();
}

class _bannerSlider extends State<MyApp> {
  List<String> _images = [
    'https://th.bing.com/th?id=OIP.1T2J7T-ZFmGkEmHINnm2wwHaFj&w=288&h=216&c=8&rs=1&qlt=30&o=6&dpr=1.1&pid=3.1&rm=2',
    'data:image/jpeg;base64,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',
    'https://th.bing.com/th?id=OIP.1T2J7T-ZFmGkEmHINnm2wwHaFj&w=288&h=216&c=8&rs=1&qlt=30&o=6&dpr=1.1&pid=3.1&rm=2',
    'https://th.bing.com/th?id=OIP.1T2J7T-ZFmGkEmHINnm2wwHaFj&w=288&h=216&c=8&rs=1&qlt=30&o=6&dpr=1.1&pid=3.1&rm=2',
  ];
  int _currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Banenr Slider APP",
      home: Scaffold(
        body: Column(
          children: [
            CarouselSlider(
              items: _images.map((url) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentSlide = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _images.map((url) {
                int index = _images.indexOf(url);
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentSlide == index ? Colors.blue : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
