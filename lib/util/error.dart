@JS('shaka.util')
library shaka.util;

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';

/// https://shaka-player-demo.appspot.com/docs/api/shaka.util.Error.html
@JS('Error')
class Error {
  @JS('Code')
  external static dynamic get codes;

  @JS('Category')
  external static dynamic get categories;

  @JS('Severity')
  external static dynamic get severities;

  external int get code;
  external int get category;
  external int get severity;
}
