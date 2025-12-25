import 'package:shared_preferences/shared_preferences.dart';

class CoinService {
  static const String _coinsKey = 'user_coins';

  /// 初始化新用户，如果用户没有硬币则设置为0
  static Future<void> initializeNewUser() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(_coinsKey)) {
      await prefs.setInt(_coinsKey, 0);
    }
  }

  /// 获取当前硬币数量
  static Future<int> getCurrentCoins() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_coinsKey) ?? 0;
  }

  /// 添加硬币
  static Future<bool> addCoins(int coins) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final currentCoins = prefs.getInt(_coinsKey) ?? 0;
      await prefs.setInt(_coinsKey, currentCoins + coins);
      return true;
    } catch (e) {
      return false;
    }
  }

  /// 消费硬币
  static Future<bool> consumeCoins(int coins) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final currentCoins = prefs.getInt(_coinsKey) ?? 0;
      if (currentCoins >= coins) {
        await prefs.setInt(_coinsKey, currentCoins - coins);
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}

