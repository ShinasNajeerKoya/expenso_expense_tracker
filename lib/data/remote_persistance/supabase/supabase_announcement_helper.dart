// lib/data/remote_persistance/supabase/supabase_announcement_helper.dart

import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAnnouncementHelper {
  static final _client = Supabase.instance.client;
  static const _bucketName = 'announcementimages';

  /// Uploads image and returns public URL
  static Future<String?> uploadAnnouncementImage({
    required File file,
    required String fileName,
  }) async {
    try {
      final storagePath =
          'announcement_${DateTime.now().millisecondsSinceEpoch}_$fileName';

      await _client.storage.from(_bucketName).upload(storagePath, file);

      final publicUrl =
      _client.storage.from(_bucketName).getPublicUrl(storagePath);

      return publicUrl;
    } catch (e) {
      print('Supabase upload error: $e');
      return null;
    }
  }

  /// Adds a new announcement entry to Supabase DB
  static Future<void> addAnnouncement({
    required String title,
    required String subtitle,
    required String imageUrl,
    required DateTime datetime,
  }) async {
    await _client.from('announcements').insert({
      'title': title,
      'sub_title': subtitle,
      'image_url': imageUrl,
      'datetime': datetime.toIso8601String(),
    });
  }

  /// Fetch all announcements sorted by datetime descending
  static Future<List<Map<String, dynamic>>> fetchAnnouncements() async {
    final data = await _client
        .from('announcements')
        .select()
        .order('datetime', ascending: false);

    return data;
  }
}
