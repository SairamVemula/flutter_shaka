@JS('shaka.dash')
library shaka.dash;

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';

@JS('DashParser')
class DashParser {
  external void configure();
}
