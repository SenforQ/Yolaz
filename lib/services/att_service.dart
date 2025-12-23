import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:flutter/foundation.dart';

class ATTService {
  /// 请求追踪权限
  /// 返回 true 表示用户授权，false 表示用户拒绝或未授权
  static Future<bool> requestTrackingPermission() async {
    try {
      if (kDebugMode) {
        debugPrint('Requesting ATT permission...');
      }

      // 检查是否支持 ATT（iOS 14+）
      final status = await AppTrackingTransparency.trackingAuthorizationStatus;
      
      if (kDebugMode) {
        debugPrint('Current ATT status: $status');
      }

      // 如果状态是未决定，则请求权限
      if (status == TrackingStatus.notDetermined) {
        final newStatus = await AppTrackingTransparency.requestTrackingAuthorization();
        
        if (kDebugMode) {
          debugPrint('ATT permission result: $newStatus');
        }

        return newStatus == TrackingStatus.authorized;
      }

      // 如果已经授权，返回 true
      return status == TrackingStatus.authorized;
    } catch (e, stackTrace) {
      if (kDebugMode) {
        debugPrint('Error requesting ATT permission: $e');
        debugPrint('Stack trace: $stackTrace');
      }
      return false;
    }
  }

  /// 获取当前追踪权限状态
  static Future<TrackingStatus> getTrackingStatus() async {
    try {
      return await AppTrackingTransparency.trackingAuthorizationStatus;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error getting ATT status: $e');
      }
      return TrackingStatus.notDetermined;
    }
  }

  /// 获取广告标识符（IDFA）
  /// 注意：只有在用户授权追踪后才能获取到有效的 IDFA
  static Future<String> getAdvertisingIdentifier() async {
    try {
      final identifier = await AppTrackingTransparency.getAdvertisingIdentifier();
      return identifier;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('Error getting advertising identifier: $e');
      }
      return '';
    }
  }
}

