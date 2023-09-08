@JS('shaka.ui')
library shaka.ui;

import 'dart:html';

import 'dart:js_interop';
import 'package:flutter_shaka/ui/ui.dart';

@JS('ResolutionSelection')
class ResolutionSelection {
  ResolutionSelection(Element parent, Controls controls);
}
