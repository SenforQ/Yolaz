import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'report_page.dart';
import 'character_detail_page.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  ActivityPageState createState() => ActivityPageState();
}

class ActivityPageState extends State<ActivityPage> {
  List<Map<String, dynamic>> _characters = [];
  List<Map<String, dynamic>> _filteredCharacters = [];
  bool _isLoading = true;
  int _currentCharacterIndex = 0;

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
        _characters = allCharacters;
        _filteredCharacters = filteredList;
        if (_currentCharacterIndex >= _filteredCharacters.length) {
          _currentCharacterIndex = 0;
        }
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

  Future<void> _showActionSheet(BuildContext context, String characterNickName) async {
    await showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Choose an action'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ReportPage(characterNickName: characterNickName),
                ),
              );
            },
            child: const Text('Report'),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () async {
              Navigator.pop(context);
              await _blockCharacter(characterNickName);
              _navigateToRootAndRefresh(context);
            },
            child: const Text('Block'),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () async {
              Navigator.pop(context);
              await _muteCharacter(characterNickName);
              _navigateToRootAndRefresh(context);
            },
            child: const Text('Mute'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      ),
    );
  }

  Future<void> _blockCharacter(String nickName) async {
    final prefs = await SharedPreferences.getInstance();
    final blockedList = prefs.getStringList('blocked_characters') ?? [];
    if (!blockedList.contains(nickName)) {
      blockedList.add(nickName);
      await prefs.setStringList('blocked_characters', blockedList);
    }
  }

  Future<void> _muteCharacter(String nickName) async {
    final prefs = await SharedPreferences.getInstance();
    final mutedList = prefs.getStringList('muted_characters') ?? [];
    if (!mutedList.contains(nickName)) {
      mutedList.add(nickName);
      await prefs.setStringList('muted_characters', mutedList);
    }
  }

  void _navigateToRootAndRefresh(BuildContext context) {
    // 返回到根视图（MainTabBarPage）
    Navigator.of(context).popUntil((route) => route.isFirst);
    // 刷新数据
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        refreshData();
      }
    });
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
            'assets/img_activity_bg.webp',
            fit: BoxFit.cover,
            width: screenSize.width,
            height: screenSize.height,
          ),
          Positioned(
            top: safeAreaTop + 20,
            left: 20,
            right: 20,
            child: Text(
              'Relay Running Challenges',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  Shadow(
                    offset: const Offset(-2, -2),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  Shadow(
                    offset: const Offset(2, -2),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  Shadow(
                    offset: const Offset(-2, 2),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: safeAreaTop + 20 + 28 + 80 - 12 - 44,
            right: (screenSize.width - (screenSize.width / 375) * 318) / 2,
            child: GestureDetector(
              onTap: () {
                if (_filteredCharacters.isNotEmpty) {
                  setState(() {
                    _currentCharacterIndex = (_currentCharacterIndex + 1) % _filteredCharacters.length;
                  });
                }
              },
              child: Image.asset(
                'assets/icon_activity_refresh.webp',
                width: 73,
                height: 44,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: safeAreaTop + 20 + 28 + 80,
            left: (screenSize.width - (screenSize.width / 375) * 318) / 2,
            child: Stack(
              children: [
                Image.asset(
                  'assets/img_activity_card_bg.webp',
                  width: (screenSize.width / 375) * 318,
                  height: (screenSize.width / 375) * 318 * 1.26,
                  fit: BoxFit.cover,
                ),
                if (_filteredCharacters.isNotEmpty)
                  Positioned(
                    top: 29,
                    left: 24,
                    right: 24,
                    bottom: 29,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            _filteredCharacters[_currentCharacterIndex]['YolazUserIcon'] as String,
                            fit: BoxFit.cover,
                          ),
                          if ((_filteredCharacters[_currentCharacterIndex]['YolazShowPhotoArray'] as List).length > 1)
                            Positioned.fill(
                              child: Image.asset(
                                (_filteredCharacters[_currentCharacterIndex]['YolazShowPhotoArray'] as List)[1] as String,
                                fit: BoxFit.cover,
                              ),
                            ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: FractionallySizedBox(
                                heightFactor: 0.5,
                                widthFactor: 1.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0),
                                        Colors.black.withOpacity(0.8),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            right: 12,
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/icon_activity_run.webp',
                                  width: 140,
                                  height: 37,
                                  fit: BoxFit.contain,
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        '${_filteredCharacters[_currentCharacterIndex]['YolazRunningTime']} min',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 12,
                            right: 12,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    await Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => CharacterDetailPage(
                                          character: _filteredCharacters[_currentCharacterIndex],
                                        ),
                                      ),
                                    );
                                    // 从详情页返回后刷新数据
                                    refreshData();
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(13),
                                      child: Image.asset(
                                        _filteredCharacters[_currentCharacterIndex]['YolazUserIcon'] as String,
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    _filteredCharacters[_currentCharacterIndex]['YolazNickName'] as String,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(2, 2),
                                          blurRadius: 4,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                GestureDetector(
                                  onTap: () {
                                    _showActionSheet(
                                      context,
                                      _filteredCharacters[_currentCharacterIndex]['YolazNickName'] as String,
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Icon(
                                      Icons.flag_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
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
            ),
          ),
        ],
      ),
    );
  }
}

