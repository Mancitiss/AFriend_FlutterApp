import 'dart:io';
import 'package:a_friend_client/constant.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

class NetworkService {
  static bool isInternetConnected = false;
  static bool isWifiConnected = false;
  static bool isMobileConnected = false;
  static SecureSocket? client;

  static void checkInternetConnection() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      isInternetConnected = false;
      isWifiConnected = false;
      isMobileConnected = false;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      isInternetConnected = true;
      isWifiConnected = true;
      isMobileConnected = false;
    } else if (connectivityResult == ConnectivityResult.mobile) {
      isInternetConnected = true;
      isWifiConnected = false;
      isMobileConnected = true;
    }
  }

  static Future<bool> openConnection(String username, String password) async {
    try {
      // check internet connection
      checkInternetConnection();
      if (!isInternetConnected) {
        return false;
      }
      client = await SecureSocket.connect(
        serverAddress,
        serverPort,
        timeout: const Duration(seconds: 5),
        onBadCertificate: (X509Certificate certificate) {
          if (kDebugMode) {
            print('Bad certificate: $certificate');
          }
          return false;
        },
      );
      return true;
    } catch (e) {
      // either internet is not connected, server is not running or certificate is not valid
      if (kDebugMode) {
        print('Error: $e');
      }
      client = null;
      return false;
    }
  }
}
