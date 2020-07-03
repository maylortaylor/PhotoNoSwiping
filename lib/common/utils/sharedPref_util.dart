// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPreferencesService {
//   static SharedPreferencesService _instance;
//   static SharedPreferences _preferences;

//   static const String DarkModeKey = 'DARK_MODE';

//   static Future<SharedPreferencesService> getInstance() async {
//     if (_instance == null) {
//       // keep local instance till it is fully initialized.
//       var secureStorage = SharedPreferencesService._();
//       await secureStorage._init();
//       _instance = secureStorage;
//     }
//     return _instance;
//   }

//   SharedPreferencesService._();
//   Future _init() async {
//     _preferences = await SharedPreferences.getInstance();
//   }

//   // get string
//   static String getString(String key, {String defValue = ''}) {
//     if (_preferences == null) return defValue;
//     print(
//         '(TRACE) SharedPreferencesService:getString. key: $key value: $defValue');
//     return _preferences.getString(key) ?? defValue;
//   }

//   // put string
//   static Future putString(String key, String value) {
//     if (_preferences == null) return null;
//     print(
//         '(TRACE) SharedPreferencesService:putString. key: $key value: $value');
//     return _preferences.setString(key, value);
//   }

//   void _saveToDisk<T>(String key, T content) {
//     print(
//         '(TRACE) LocalStorageService:_saveStringToDisk. key: $key value: $content');
//     if (content is String) {
//       _preferences.setString(key, content);
//     }
//     if (content is bool) {
//       _preferences.setBool(key, content);
//     }
//     if (content is int) {
//       _preferences.setInt(key, content);
//     }
//     if (content is double) {
//       _preferences.setDouble(key, content);
//     }
//     if (content is List<String>) {
//       _preferences.setStringList(key, content);
//     }
//   }

//   bool get darkMode => getString(DarkModeKey) ?? false;
//   set darkMode(bool value) => _saveToDisk(DarkModeKey, value);
// }
