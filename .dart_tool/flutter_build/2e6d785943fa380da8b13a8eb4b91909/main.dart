// @dart=2.16

import 'dart:ui' as ui;

import 'package:my_portfolio/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
