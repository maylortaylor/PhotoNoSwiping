import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

Future<Map<String, dynamic>> parseJsonFromAssets(String assetsPath) async {
  debugPrint('--- Parsing json from: $assetsPath');
  return rootBundle
      .loadString(assetsPath)
      .then((jsonStr) => jsonDecode(jsonStr));
}
