@JS('shaka.ui')
library shaka.ui;

import 'dart:html';

import 'package:js/js.dart';
import 'package:flutter_shaka/ui/ui.dart';

@JS('ResolutionSelection')
class ResolutionSelection {
  ResolutionSelection(Element parent, Controls controls);
}
