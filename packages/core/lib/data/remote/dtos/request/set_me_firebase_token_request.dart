import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_me_firebase_token_request.freezed.dart';
part 'set_me_firebase_token_request.g.dart';

@freezed
abstract class SetMeFirebaseTokenRequest with _$SetMeFirebaseTokenRequest {
  const factory SetMeFirebaseTokenRequest({required String deviceToken}) =
      _SetMeFirebaseTokenRequest;

  factory SetMeFirebaseTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$SetMeFirebaseTokenRequestFromJson(json);
}
