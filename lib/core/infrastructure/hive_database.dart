import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveDatabase {
  late Box<dynamic> _instance;

  Box<dynamic> get box => _instance;

  bool _hasBeenInitialized = false;

  Future<void> init() async {
    if (_hasBeenInitialized) return;

    _hasBeenInitialized = true;

    final dbDirectory = await getApplicationDocumentsDirectory();
    Hive.init(dbDirectory.path);

    _instance = await Hive.openBox<String>('Database');
  }
}

class AppPreferenceKeys {
  static const String token = 'token';
  static const String id = 'id';
  // practis
  static const String name = 'name';
  static const String email = 'email';
  static const String uid = 'uid';
  static const String password = 'password';
}
