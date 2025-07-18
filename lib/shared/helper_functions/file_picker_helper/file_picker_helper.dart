// lib/shared/helper_functions/file_picker_helper.dart

import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class FilePickerHelper {
  static final ImagePicker _picker = ImagePicker();

  /// Pick image from gallery
  /// Returns a map: { file: File, fileName: String }
  static Future<Map<String, dynamic>?> pickImageFromGallery() async {
    try {
      final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
      if (pickedFile == null) return null;

      final file = File(pickedFile.path);
      final fileName = basename(file.path);

      return {
        'file': file,
        'fileName': fileName,
      };
    } catch (e) {
      print('Image picker error: $e');
      return null;
    }
  }
}


class LocalAssetHelper {
  static Future<File> getImageFileFromAssets(String assetPath) async {
    final byteData = await rootBundle.load(assetPath);

    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/${basename(assetPath)}');

    await file.writeAsBytes(byteData.buffer.asUint8List());

    return file;
  }
}
