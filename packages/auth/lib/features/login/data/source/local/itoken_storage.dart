abstract interface class ITokenStorage {
  Future<void> storeToken(String accessToken, String refreshToken, String uuid);

    Future<String?> getUuid();
}
