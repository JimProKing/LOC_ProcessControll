import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _concept = prefs.getStringList('ff_concept')?.map(int.parse).toList() ??
          _concept;
    });
    _safeInit(() {
      _memo = prefs.getStringList('ff_memo')?.map(int.parse).toList() ?? _memo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<int> _concept = [];
  List<int> get concept => _concept;
  set concept(List<int> _value) {
    _concept = _value;
    prefs.setStringList('ff_concept', _value.map((x) => x.toString()).toList());
  }

  void addToConcept(int _value) {
    _concept.add(_value);
    prefs.setStringList(
        'ff_concept', _concept.map((x) => x.toString()).toList());
  }

  void removeFromConcept(int _value) {
    _concept.remove(_value);
    prefs.setStringList(
        'ff_concept', _concept.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromConcept(int _index) {
    _concept.removeAt(_index);
    prefs.setStringList(
        'ff_concept', _concept.map((x) => x.toString()).toList());
  }

  void updateConceptAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_concept[_index]);
    prefs.setStringList(
        'ff_concept', _concept.map((x) => x.toString()).toList());
  }

  List<int> _memo = [];
  List<int> get memo => _memo;
  set memo(List<int> _value) {
    _memo = _value;
    prefs.setStringList('ff_memo', _value.map((x) => x.toString()).toList());
  }

  void addToMemo(int _value) {
    _memo.add(_value);
    prefs.setStringList('ff_memo', _memo.map((x) => x.toString()).toList());
  }

  void removeFromMemo(int _value) {
    _memo.remove(_value);
    prefs.setStringList('ff_memo', _memo.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMemo(int _index) {
    _memo.removeAt(_index);
    prefs.setStringList('ff_memo', _memo.map((x) => x.toString()).toList());
  }

  void updateMemoAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_memo[_index]);
    prefs.setStringList('ff_memo', _memo.map((x) => x.toString()).toList());
  }

  String _temp = '';
  String get temp => _temp;
  set temp(String _value) {
    _temp = _value;
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
