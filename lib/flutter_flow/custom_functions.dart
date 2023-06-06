import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/supabase/supabase.dart';

double conceptProgress(List<int> conceptList) {
  int length = conceptList.length;
  double result = length / 86;
  return result;
}

bool isMemo1(List<int> memoList) {
  return memoList.contains(1);
}

bool isMemo2(List<int> memoList) {
  return memoList.contains(2);
}

bool isMemo3(List<int> memoList) {
  return memoList.contains(3);
}

bool isMemo4(List<int> memoList) {
  return memoList.contains(4);
}

bool isMemo5(List<int> memoList) {
  return memoList.contains(5);
}

double memoPro(List<int> memo) {
  int length = memo.length;
  double result = length / 5;
  return result;
}
