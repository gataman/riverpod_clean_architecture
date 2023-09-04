import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MockWidget extends StatefulWidget {
  const MockWidget({super.key});

  @override
  State<MockWidget> createState() => _MockWidgetState();
}

class _MockWidgetState extends State<MockWidget> {
  bool isSignedIn = true;

  @override
  Widget build(BuildContext context) {
    return isSignedIn
        ? TextButton(
            onPressed: () async {
              try {
                await Supabase.instance.client.auth.signOut();
              } catch (_) {}
            },
            child: const Text('Sign out'),
          )
        : const Text('You have signed out');
  }

  @override
  void initState() {
    Supabase.instance.client.auth.onAuthStateChange.listen((data) {
      if (data.event == AuthChangeEvent.signedOut) {
        setState(() {
          isSignedIn = false;
        });
      }
    });
    super.initState();
  }
}

class MockExpiredStorage extends LocalStorage {
  MockExpiredStorage()
      : super(
          initialize: () async {},

          // Session expires at is at its maximum value for unix timestamp
          accessToken: () async =>
              '{"currentSession":{"token_type": "","access_token":"","expires_in":20,"refresh_token":"","user":{"app_metadata": {},"id":"","aud":"","created_at":"","role":"authenticated","updated_at":""}},"expiresAt":${(DateTime.now().subtract(const Duration(seconds: 11)).millisecondsSinceEpoch / 1000).round()}}',
          persistSession: (_) async {},
          removePersistedSession: () async {},
          hasAccessToken: () async => true,
        );
}

class MockEmptyLocalStorage extends LocalStorage {
  MockEmptyLocalStorage()
      : super(
          initialize: () async {},
          accessToken: () async => null,
          persistSession: (_) async {},
          removePersistedSession: () async {},
          hasAccessToken: () async => false,
        );
}

/// Registers the mock handler for uni_links
void mockAppLink({String? initialLink}) {
  const channel = MethodChannel('com.llfbandit.app_links/messages');
  const anotherChannel = MethodChannel('com.llfbandit.app_links/events');

  //TestWidgetsFlutterBinding.ensureInitialized();

  // ignore: invalid_null_aware_operator
  TestDefaultBinaryMessengerBinding.instance?.defaultBinaryMessenger
      .setMockMethodCallHandler(channel, (call) async => initialLink);

  // ignore: invalid_null_aware_operator
  TestDefaultBinaryMessengerBinding.instance?.defaultBinaryMessenger
      .setMockMethodCallHandler(anotherChannel, (message) async => null);
}

class MockAsyncStorage extends GotrueAsyncStorage {
  final Map<String, String> _map = {};

  @override
  Future<String?> getItem({required String key}) async {
    return _map[key];
  }

  @override
  Future<void> removeItem({required String key}) async {
    _map.remove(key);
  }

  @override
  Future<void> setItem({required String key, required String value}) async {
    _map[key] = value;
  }
}
