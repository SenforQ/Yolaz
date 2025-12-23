import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/home_page.dart';
import 'pages/group_page.dart';
import 'pages/activity_page.dart';
import 'pages/me_page.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yolaz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // 每次都进入 Welcome 页面
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const WelcomePage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class MainTabBarPage extends StatefulWidget {
  const MainTabBarPage({super.key});

  @override
  State<MainTabBarPage> createState() => MainTabBarPageState();
}

class MainTabBarPageState extends State<MainTabBarPage> {
  int _currentIndex = 0;
  final GlobalKey<ActivityPageState> _activityPageKey = GlobalKey<ActivityPageState>();
  final GlobalKey<HomePageState> _homePageKey = GlobalKey<HomePageState>();

  List<Widget> get _pages => [
    HomePage(key: _homePageKey),
    const GroupPage(),
    ActivityPage(key: _activityPageKey),
    const MePage(),
  ];

  void refreshActivityPage() {
    _activityPageKey.currentState?.refreshData();
  }

  void refreshHomePage() {
    _homePageKey.currentState?.refreshData();
  }

  final List<String> _normalIcons = [
    'assets/btn_tab_home_pre.webp',
    'assets/btn_tab_group_pre.webp',
    'assets/btn_tab_activity_pre.webp',
    'assets/btn_tab_me_pre.webp',
  ];

  final List<String> _selectedIcons = [
    'assets/btn_tab_home_nor.webp',
    'assets/btn_tab_group_nor.webp',
    'assets/btn_tab_activity_nor.webp',
    'assets/btn_tab_me_nor.webp',
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: _pages[_currentIndex],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: safeAreaBottom + 12,
            child: _buildTabBar(),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(4, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
            },
            child: Container(
              width: 72,
              height: 72,
              child: Image.asset(
                _currentIndex == index
                    ? _selectedIcons[index]
                    : _normalIcons[index],
                fit: BoxFit.contain,
              ),
            ),
          );
        }),
      ),
    );
  }
}
