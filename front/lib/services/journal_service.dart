import 'package:http/http.dart' show Client;

class JournalService {
  final Client apiClient = Client();
  static const _baseUrl = ...;

  getEntries() {
    apiClient.get(_baseUrl);
  }
}
