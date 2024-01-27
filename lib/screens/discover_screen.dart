import 'package:flutter/material.dart';
import 'package:test_app/widgets/buttons.dart';

import 'package:test_app/widgets/media_query_images.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Text(
                'Discover',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Text(
                'WHAT\'S NEWS TODAY',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MediaQueryImages(
                      image: 'assets/images/Rectangle2.8.jpg',
                      name: 'Radjab Nasri',
                      login: '@radsri',
                    ),
                    MediaQueryImages(
                      image: 'assets/images/Rectangle2.9.jpg',
                      name: 'Stephen Tompson',
                      login: '@karate',
                    ),
                    MediaQueryImages(
                      image: 'assets/images/Rectangle2.10.jpg',
                      name: 'Sam Johnson',
                      login: '@bluesinger',
                    ),
                    MediaQueryImages(
                      image: 'assets/images/Rectangle2.11.jpg',
                      name: 'Nicola Tesla',
                      login: 'flash',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                'BROWSE ALL',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/photos/dis10.jpg',
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/photos/dis2.jpg',
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/photos/dis4.jpg',
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/photos/dis6.jpg',
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/photos/dis8.jpg',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/photos/dis1.jpg',
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/photos/dis3.jpg',
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/photos/dis5.jpg',
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/photos/dis7.jpg',
                        ),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/photos/dis9.jpg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              TransparentLongBtn(buttonFunction: () {}, buttonText: 'SEE MORE'),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
