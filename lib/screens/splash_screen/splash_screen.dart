import 'package:e_learning/utils/const.dart';
import 'package:e_learning/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final PageController _pageController = PageController(initialPage: 0);
  int _progress = 0;
  int _currentPage = 0;
  List<String> images = ['images/girl1.png', 'images/girl2.png', 'images/girl3.png', 'images/girl4.png'];
  List<String> texts = ['Online Learning Platform', 'Learn on your Schedule' , 'Ready to find a Course', 'Explore it Today!'];
 String description = 'A handful of model sentence structures, too generate Lorem which looks reason able.';
  void _updateProgress(int page) {
    setState(() {
      _currentPage = page;
      _progress = (page + 1) * 25;
    });
  }
  void _goToNextPage() {
    if (_currentPage < images.length - 1) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _updateProgress,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          top: 0,
                            child: Image.asset('assets/${images[index]}')),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.elliptical(1250,500),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 88.0,bottom: 10),
                                  child: SizedBox(
                                    width:180,
                                    child: Text(
                                      texts[index],
                                      style: CustomTextTheme.headline2,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 276,
                                  child: Text(
                                    description,
                                    style: CustomTextTheme.bodyText1.copyWith(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 24.0,top: 32.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        width: 60,
                                        height: 60,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: const Color(0xff060302).withOpacity(0.2),
                                              width: 1,
                                            ),
                                          ),
                                          child: CircularProgressIndicator(
                                            value: _progress / 100,
                                            strokeWidth: 1,

                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: _goToNextPage,
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Icon(
                                          Icons.arrow_forward_rounded,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}