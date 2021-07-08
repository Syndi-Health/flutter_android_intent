import 'package:flutter/services.dart';

class AppUsagePermission {
  static const MethodChannel _channel = const MethodChannel('intent');

  static Future<bool> checkAppUsagePermission() {
    /*Map<String, dynamic> parameters = {};

    if (_action != null) parameters['action'] = _action;
    if (_type != null) parameters['type'] = _type;
    if (_package != null) parameters['package'] = _package;
    if (_data != null) parameters['data'] = _data.toString();
    if (_category.isNotEmpty) parameters['category'] = _category;
    if (_flag.isNotEmpty) parameters['flag'] = _flag;
    if (_extra.isNotEmpty) parameters['extra'] = _extra;
    if (_typeInfo.isNotEmpty) parameters['typeInfo'] = _typeInfo;

    parameters['chooser'] = createChooser;*/

    return _channel.invokeMethod('checkPermission').then((data) => data as bool);
  }
}
