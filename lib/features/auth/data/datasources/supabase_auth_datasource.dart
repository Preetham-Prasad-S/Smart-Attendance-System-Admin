import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthDatasource {
  final SupabaseClient _client;

  SupabaseAuthDatasource(this._client);

  Future<User?> login(String email, String password) async{
    return (await _client.auth.signInWithPassword(email : email, password: password)).user;
  }

  Future<User?> signUp(String email, String password) async{
    return (await _client.auth.signUp(email : email, password: password)).user;
  }

  Future<void> logout() async {
    await _client.auth.signOut();
  }

  User? getCurrentUser(){
    return _client.auth.currentUser;
  }

}