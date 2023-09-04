import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ServiceHelper {
  const ServiceHelper._();
  static Future<void> initializeSupabase() async {
    await dotenv.load();
    WidgetsFlutterBinding.ensureInitialized();

    // Initialize the Supabase singleton
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL'] ?? '',
      anonKey: dotenv.env['SUPABASE_KEY'] ?? '',
      localStorage: MockLocalStorage(),
      debug: false,
    );
  }

  static void disposeSupabase() {
    Supabase.instance.dispose();
  }
}

class MockLocalStorage extends LocalStorage {
  MockLocalStorage()
      : super(
          initialize: () async {},

          // Session expires at is at its maximum value for unix timestamp
          accessToken: () async =>
              '{"currentSession":{"token_type": "","access_token":"","expires_in":3600,"refresh_token":"","user":{"app_metadata": {},"id":"","aud":"","created_at":"","role":"authenticated","updated_at":""}},"expiresAt":2147483647}',
          persistSession: (_) async {},
          removePersistedSession: () async {},
          hasAccessToken: () async => true,
        );
}
