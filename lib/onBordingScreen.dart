import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'home_page.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: Color(0xffF6F7FD),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Image.asset(
                        'assets/images/1.png',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xffF6F7FD),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Image.asset(
                        'assets/images/2.png',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xffF6F7FD),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Image.asset(
                        'assets/images/3.png',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // asd
          Container(
            //alignment: Alignment(0, 0.50),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 17.0,
                    top: 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "skip",
                          style: TextStyle(
                            color: Color(0xff3C58C3),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                Text(
                  'Welcome To Homie',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Find the ideal place according to your\nneed and expectations.',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SmoothPageIndicator(
                      axisDirection: Axis.horizontal,
                      controller: _controller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        // Work here
                        expansionFactor: 2,
                        offset: 16.0,
                        dotWidth: 8.0,
                        dotHeight: 8.0,
                        spacing: 4,
                        radius: 16,
                        activeDotColor: Color(0xff112DCC),
                        dotColor: Colors.grey,
                        strokeWidth: 1,
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3C58C3),
                      elevation: 10,
                      minimumSize: Size(120, 40),
                      maximumSize: Size(120, 40),
                      shadowColor: Color(0xffA7B4D4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
