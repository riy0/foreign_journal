import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';

class JournalEntry with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  List _entries = [];
}
