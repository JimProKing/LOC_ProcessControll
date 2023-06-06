import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://nvrmkdbaaiziiyhycelb.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im52cm1rZGJhYWl6aWl5aHljZWxiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODI0NzIzMDEsImV4cCI6MTk5ODA0ODMwMX0.VDn3KW4hDyWLE2lxAOZODy22OG2MHqKIafmBfTAu6kc';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
