import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_me_firebase_token_request.freezed.dart';
part 'set_me_firebase_token_request.g.dart';

@freezed
class SetMeFirebaseTokenRequest with _$SetMeFirebaseTokenRequest {
  factory SetMeFirebaseTokenRequest({required String deviceToken}) =
      _SetMeFirebaseTokenRequest;

  factory SetMeFirebaseTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$SetMeFirebaseTokenRequestFromJson(json);
}
