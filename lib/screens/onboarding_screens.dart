import 'package:calmind_user/screens/registerandlogin_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  bool _isLastPage = false;

  final List<Map<String, String>> _onboardingData = [
    {
      'title': 'Calm your mind',
      'description': 'The chaos in your mind can be resolved here',
      'image': 'assets/images/onboarding1.png',
    },
    {
      'title': 'Find the way',
      'description': 'You can find a way to relaxing your mind',
      'image': 'assets/images/onboarding4.png',
    },
    {
      'title': 'Let\'s Get Started',
      'description': 'Start calming yourself and your mind with calmind',
      'image': 'assets/images/onboarding3.png',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
        _isLastPage = _currentPage == _onboardingData.length - 1;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToLoginScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const RegisterAndLoginScreen()),
    );
  }

  Widget _buildPageIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < _onboardingData.length; i++) {
      indicators.add(
        i == _currentPage ? _indicator(true) : _indicator(false),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff6869ac) : Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _onboardingData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        _onboardingData[index]['image']!,
                        height: 250.0,
                        width: 250.0,
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        _onboardingData[index]['title']!,
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff6869ac),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: Text(
                          _onboardingData[index]['description']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff6869ac),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _navigateToLoginScreen,
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                    width:
                        16.0), // Menambahkan jarak antara button Skip dan button Next
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildPageIndicator(),
                    ],
                  ),
                ),
                const SizedBox(
                    width:
                        16.0), // Menambahkan jarak antara indicator dan button Next
                TextButton(
                  onPressed: _isLastPage
                      ? _navigateToLoginScreen
                      : () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                  child: Text(
                    _isLastPage ? 'Next' : 'Next',
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff6869ac),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}