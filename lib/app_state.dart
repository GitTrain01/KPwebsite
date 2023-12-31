import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _KPInformation = 'AboutUs';
  String get KPInformation => _KPInformation;
  set KPInformation(String value) {
    _KPInformation = value;
  }

  String _MenuBtnColor = 'Home';
  String get MenuBtnColor => _MenuBtnColor;
  set MenuBtnColor(String value) {
    _MenuBtnColor = value;
  }

  String _PhoneMenuBar = 'MenuOff';
  String get PhoneMenuBar => _PhoneMenuBar;
  set PhoneMenuBar(String value) {
    _PhoneMenuBar = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
