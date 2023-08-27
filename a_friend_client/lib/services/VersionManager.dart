import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:flutter/foundation.dart';

class VersionManager{
  static const List<int> thisVersion = [1, 3, 1, 2];
  static const String versionUrl = 'https://mancitiss.duckdns.org/index.html';
  static const String downloadUrl = 'https://mancitiss.duckdns.org/A%20Friend/AFriend.exe';

  static String getVersion() => thisVersion.map((element) => element.toString()).join('.');

  // get temp folder if OS is window
  static void getTempFolder() {
    if (Platform.isWindows) {
      final tempPath = Directory.systemTemp.path;
      if (kDebugMode) {
        print('Temporary Folder Path on Windows: $tempPath');
      }
    } else {
      if (kDebugMode) {
        print('This is not a Windows operating system.');
      }
    }
  }

  // check new version
  static Future<bool> checkNewVersion() async{
    try {
      String data;
      final response = await http.get(Uri.parse(versionUrl));

      if (response.statusCode == 200) {
        if (kDebugMode) {
          print('Request successful');
        }
        data = response.body;

        // Split the version string into an array of integers.
        List<int> newestVersion = data.split('.').map((e) => int.parse(e)).toList();

        // Print the current and newest versions.
        if (kDebugMode) {
          print('This version: ${thisVersion[0]}.${thisVersion[1]}.${thisVersion[2]}.${thisVersion[3]}');
          print('Newest version found: ${newestVersion[0]}.${newestVersion[1]}.${newestVersion[2]}.${newestVersion[3]}');
        }
        
        // Check if the newest version is greater than the current version.
        for (int i = 0; i < newestVersion.length; i++) {
          if (i >= 4) break;
          if (newestVersion[i] > thisVersion[i]) {
            return true;
          }
        }
      } else {
        if (kDebugMode) {
          print('Request failed with status: ${response.statusCode}');
        }
        return false;
      }
      
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return false;
    }
    return false;
  }

  // download new version
  static Future<void> downloadNewVersion() async {
      // check if device is windows
      if (!Platform.isWindows) {
        if (kDebugMode) {
          print('This is not a Windows operating system.');
        }
        return;
      }
      final response = await http.get(Uri.parse(downloadUrl));

      if (response.statusCode == 200) {
        final bytes = response.bodyBytes;

        final tempDir = Directory.systemTemp;
        const fileName = 'AFriend.exe';
        final tempFile = File('${tempDir.path}/$fileName');
        await tempFile.writeAsBytes(bytes);

        Process.run(tempFile.path, ['/SP-', '/silent', '/noicons', '/dir=expand:{autopf}\\A Friend']);
      } else {
        if (kDebugMode) {
          print('Failed to download the file.');
        }
      }
  }
}