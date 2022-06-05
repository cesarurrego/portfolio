import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureUtil {
  static const storage = FlutterSecureStorage();

  static Future<String?> readData(String key) async {
    return await storage.read(key: key);
  }

  static Future<Map<String, String>> readAllData() async {
    return await storage.readAll();
  }

  static Future<void> writeData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  static Future<void> deleteData(String key) async {
    await storage.delete(key: key);
  }

  static Future<void> deleteAllData() async {
    await storage.deleteAll();
  }
}
