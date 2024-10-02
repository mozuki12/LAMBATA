import 'package:app_mobile/ui/screens/welcome/homePage.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const OnboardingPage(
      title: "24/7/365 + 1 Services",
      description: "Lembata i-cation selalu siap sedia bersama Anda saat terjadi bencana. Kapan saja. Di mana saja. Sepanjang tahun.",
      imagePath: "assets/images/onboarding1.png",
    ),
    const OnboardingPage(
      title: "Jangan Takut Lagi!",
      description: "Lindungi orang-orang yang Anda cintai dengan mendapatkan informasi bencana terkini.",
      imagePath: "assets/images/onboarding2.png",
    ),
    const OnboardingPage(
      title: "Dari kami, untuk Bangsa",
      description: "Kami hadir di sini sebagai ungkapan rasa cinta kepada negeri ini. Bersatu, bersama, siap menghadapi bencana.",
      imagePath: "assets/images/onboarding3.png",
    ),
    const OnboardingPage(
      title: "Apakah kamu ingin mencari rute terdekat?",
      description: "Mulai dengan membagikan lokasi anda dengan kita",
      imagePath: "assets/images/onboarding4.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: _pages,
            ),
          ),
          _buildPageIndicator(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: _buildActionButton(),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

Widget _buildActionButton() {
  switch (_currentPage) {
    case 0:
      return TextButton(
        onPressed: () {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        child: const Text(
          'Next',
          style: TextStyle(color: Colors.blue), // Ganti warna teks di sini
        ),
      );

    case 1:
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: const Text(
              'Preview',
              style: TextStyle(color: Colors.blue), // Ganti warna teks di sini
            ),
          ),
          TextButton(
            onPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.blue), // Ganti warna teks di sini
            ),
          ),
        ],
      );

    case 2: // Onboarding 3
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: const Text(
              'Preview',
              style: TextStyle(color: Colors.blue), // Ganti warna teks di sini
            ),
          ),
          TextButton(
            onPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.blue), // Ganti warna teks di sini
            ),
          ),
        ],
      );

    case 3:
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              // Implement action for turning on location
            },
            child: const Text(
              'Allow Location Services',
              style: TextStyle(color: Colors.blue), // Ganti warna teks di sini
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigate to homepage or whatever you want
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()), // Ganti dengan halaman utama
              );
            },
            child: const Text(
              'Maybe Later',
              style: TextStyle(color: Colors.blue), // Ganti warna teks di sini
            ),
          ),
        ],
      );

    default:
      return Container();
  }
}

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_pages.length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 10,
          width: _currentPage == index ? 20 : 10,
          decoration: BoxDecoration(
            color: _currentPage == index ? Colors.blue : const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 250),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
