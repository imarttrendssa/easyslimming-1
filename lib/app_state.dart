import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _prtName = prefs.getString('ff_prtName') ?? _prtName;
    _prtImage = prefs.getString('ff_prtImage') ?? _prtImage;
    _prtPrice = prefs.getInt('ff_prtPrice') ?? _prtPrice;
    _prtQty = prefs.getInt('ff_prtQty') ?? _prtQty;
  }

  SharedPreferences prefs;

  String _prtName = 'D.A Pill';
  String get prtName => _prtName;
  set prtName(String _value) {
    _prtName = _value;
    prefs.setString('ff_prtName', _value);
  }

  String _prtImage =
      'https://easyslimming.co.za/wp-content/uploads/2022/01/1-DA1-Pill-15.jpg';
  String get prtImage => _prtImage;
  set prtImage(String _value) {
    _prtImage = _value;
    prefs.setString('ff_prtImage', _value);
  }

  int _prtPrice = 350;
  int get prtPrice => _prtPrice;
  set prtPrice(int _value) {
    _prtPrice = _value;
    prefs.setInt('ff_prtPrice', _value);
  }

  int _prtQty = 1;
  int get prtQty => _prtQty;
  set prtQty(int _value) {
    _prtQty = _value;
    prefs.setInt('ff_prtQty', _value);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
