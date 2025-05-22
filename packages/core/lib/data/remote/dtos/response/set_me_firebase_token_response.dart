import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_me_firebase_token_response.freezed.dart';
part 'set_me_firebase_token_response.g.dart';

@freezed
class SetMeFirebaseTokenResponse with _$SetMeFirebaseTokenResponse {
  factory SetMeFirebaseTokenResponse({
    required String status,
    required bool data,
  }) = _SetMeFirebaseTokenResponse;

  factory SetMeFirebaseTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$SetMeFirebaseTokenResponseFromJson(json);
}
