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
    _prtPrice = prefs.getInt('ff_prtPrice') ?? _prtPrice;
    _prtQty = prefs.getInt('ff_prtQty') ?? _prtQty;
  }

  SharedPreferences prefs;

  int _prtPrice = 0;
  int get prtPrice => _prtPrice;
  set prtPrice(int _value) {
    _prtPrice = _value;
    prefs.setInt('ff_prtPrice', _value);
  }

  int _prtQty = 0;
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
