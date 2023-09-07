import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  late SupabaseClient supabaseClient;

  setUp(() async {
    await dotenv.load();
    supabaseClient = SupabaseClient(
      dotenv.env['SUPABASE_URL'] ?? '',
      dotenv.env['SUPABASE_KEY'] ?? '',
    );
  });

  test('create user', () async {
    final res = await supabaseClient.auth.signUp(
      email: 'mail@gmail.com',
      password: '******',
    );

    final session = res.session;
    final user = res.user;

    print(session);
    print(user);

    //expect(result, isA<List<UserChat>>());
  });
}
