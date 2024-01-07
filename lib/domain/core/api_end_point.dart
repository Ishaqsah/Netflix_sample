import 'package:netflixapp/core/Url%20&%20Strings/url_strings.dart';
import 'package:netflixapp/infratructure/api_key.dart';

class ApiEndPoint {
  static const DownloadUrl = '$kbaseUrl/trending/movie/day?api_key=$apikey';
  static const SearchUrl = '$kbaseUrl/search/movie?api_key=$apikey';
}
