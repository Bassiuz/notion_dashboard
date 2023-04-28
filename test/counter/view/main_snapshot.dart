import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

void main() {
  test('createSnapshot', createSnapshot);
}

Future<void> createSnapshot() async {
  // WidgetsToImageController to access widget
  final controller = WidgetsToImageController();
// to save image bytes of widget
  Uint8List? bytes;

  WidgetsToImage(
    controller: controller,
    child: const Text('hallo'),
  );

  bytes = await controller.capture();

  await File('test.png').writeAsBytes(bytes!);
  expect(1, 2);
}
