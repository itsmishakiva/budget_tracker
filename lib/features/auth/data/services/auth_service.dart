abstract interface class AuthService {
  Future<Map<String, dynamic>> auth();

  Future<Map<String, dynamic>> signup();

  Future<void> saveTokens(String accessToken, String tokenType);
}
