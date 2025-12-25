import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'rob_chat_page.dart';
import 'video_full_page.dart';
import '../services/coin_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _characters = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadCharacters();
  }

  Future<void> _loadCharacters() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/yolaz_figure.json');
      final List<dynamic> jsonData = json.decode(jsonString);
      final allCharacters = jsonData.cast<Map<String, dynamic>>();
      
      // 过滤被拉黑和屏蔽的角色
      final prefs = await SharedPreferences.getInstance();
      final blockedList = prefs.getStringList('blocked_characters') ?? [];
      final mutedList = prefs.getStringList('muted_characters') ?? [];
      final filteredList = allCharacters.where((character) {
        final nickName = character['YolazNickName'] as String;
        return !blockedList.contains(nickName) && !mutedList.contains(nickName);
      }).toList();
      
      setState(() {
        _characters = filteredList;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void refreshData() {
    _loadCharacters();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final safeAreaTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/base_content_bg.webp',
            fit: BoxFit.cover,
            width: screenSize.width,
            height: screenSize.height,
          ),
          Positioned(
            top: safeAreaTop + 20,
            left: 20,
            right: 20,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ask Me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                      Shadow(
                        offset: Offset(-2, -2),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                      Shadow(
                        offset: Offset(2, -2),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                      Shadow(
                        offset: Offset(-2, 2),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    const int requiredCoins = 15;
                    final currentCoins = await CoinService.getCurrentCoins();
                    
                    if (currentCoins < requiredCoins) {
                      if (!mounted) return;
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Insufficient Coins'),
                          content: Text(
                            'You need $requiredCoins Coins to use the ask Me feature. Your current balance is $currentCoins Coins.',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                      return;
                    }
                    
                    if (!mounted) return;
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Confirm Payment'),
                        content: Text(
                          'Using the ask Me feature will cost $requiredCoins Coins. Your current balance is $currentCoins Coins. Do you want to continue?',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF8B5CF6),
                            ),
                            child: const Text('Confirm'),
                          ),
                        ],
                      ),
                    );
                    
                    if (confirmed == true) {
                      final success = await CoinService.consumeCoins(requiredCoins);
                      if (!mounted) return;
                      
                      if (success) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RobChatPage(),
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Payment Failed'),
                            content: const Text('Failed to process payment. Please try again.'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    }
                  },
                  child: Image.asset(
                    'assets/top_home_rob.webp',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Recommend',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                      Shadow(
                        offset: Offset(-2, -2),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                      Shadow(
                        offset: Offset(2, -2),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                      Shadow(
                        offset: Offset(-2, 2),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                if (!_isLoading && _characters.isNotEmpty) ...[
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: _characters.map((character) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: _buildVideoCard(context, character),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80),
                ] else if (_isLoading) ...[
                  const SizedBox(height: 20),
                  const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoCard(BuildContext context, Map<String, dynamic> character) {
    final thumbnailArray = character['YolazShowThumbnailArray'] as List;
    final videoArray = character['YolazShowVideoArray'] as List;
    
    if (thumbnailArray.isEmpty || videoArray.isEmpty) {
      return const SizedBox.shrink();
    }

    final thumbnailPath = thumbnailArray[0] as String;
    final videoPath = videoArray[0] as String;
    final characterName = character['YolazNickName'] as String;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => VideoFullPage(
              videoPath: videoPath,
              characterName: characterName,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Image.asset(
            'assets/img_chat_photos_bg.webp',
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Positioned(
            top: 39,
            left: 10,
            right: 10,
            bottom: 10,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    thumbnailPath,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                const Center(
                  child: Icon(
                    Icons.play_circle_filled,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

