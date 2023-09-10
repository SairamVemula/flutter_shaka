@JS('shaka.polyfill')
library shaka.polyfill;

import 'dart:js';

// ignore: depend_on_referenced_packages
import 'package:js/js.dart';

bool get isLoaded => context.hasProperty('shaka');
bool get isNotLoaded => !isLoaded;

@JS('installAll')
external void installPolyfills();

@JS('PatchedMediaKeysApple.install')
external void installPatchedMediaKeysApple();

String errorCodeName(num code) {
  return _findName(context['shaka']['util']['Error']['Code'], code);
}

String errorCategoryName(num category) {
  return _findName(context['shaka']['util']['Error']['Category'], category);
}

String _findName(JsObject object, num value) {
  final List keys = context['Object'].callMethod('keys', [object]);

  try {
    return keys.firstWhere((k) => object[k] == value);
  } catch (_) {
    return '';
  }
}
