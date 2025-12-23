import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

class CharacterCallPage extends StatefulWidget {
  final Map<String, dynamic> character;

  const CharacterCallPage({
    super.key,
    required this.character,
  });

  @override
  State<CharacterCallPage> createState() => _CharacterCallPageState();
}

class _CharacterCallPageState extends State<CharacterCallPage> {
  late AudioPlayer _audioPlayer;
  Timer? _autoHangupTimer;
  int _callDuration = 0;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _startCall();
  }

  Future<void> _startCall() async {
    // 自动播放背景音乐
    await _audioPlayer.play(AssetSource('yolaz_background_music.mp3'));
    _audioPlayer.setReleaseMode(ReleaseMode.loop); // 循环播放

    // 30秒后自动挂断
    _autoHangupTimer = Timer(const Duration(seconds: 30), () {
      _hangUp();
    });

    // 更新通话时长
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          _callDuration++;
        });
        if (_callDuration >= 30) {
          timer.cancel();
        }
      } else {
        timer.cancel();
      }
    });
  }

  void _hangUp() {
    _audioPlayer.stop();
    _autoHangupTimer?.cancel();
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _autoHangupTimer?.cancel();
    super.dispose();
  }

  String _formatDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final safeAreaTop = MediaQuery.of(context).padding.top;
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;

    // 获取第三张图片（索引为2）
    final photoArray = widget.character['YolazShowPhotoArray'] as List;
    final backgroundImage = photoArray.length > 2
        ? photoArray[2] as String
        : widget.character['YolazUserIcon'] as String;

    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
        leading: const SizedBox.shrink(),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 28,
            ),
            onPressed: _hangUp,
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // 背景图片
          Image.asset(
            backgroundImage,
            fit: BoxFit.cover,
            width: screenSize.width,
            height: screenSize.height,
          ),
          // 渐变遮罩
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
          // 内容区域
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              // 角色头像
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(
                  widget.character['YolazUserIcon'] as String,
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),
              // 角色昵称
              Text(
                widget.character['YolazNickName'] as String,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              // 通话时长
              Text(
                _formatDuration(_callDuration),
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              // 挂断按钮
              Padding(
                padding: EdgeInsets.only(bottom: safeAreaBottom + 40),
                child: GestureDetector(
                  onTap: _hangUp,
                  child: Image.asset(
                    'assets/call_end.webp',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

