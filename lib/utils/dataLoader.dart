import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

Future<dynamic> loadData(String path) async {
  final _yamlStr = await rootBundle.loadString(path);
  return loadYaml(_yamlStr);
}
