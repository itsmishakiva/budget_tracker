// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_signup_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewSignupUserImpl _$$NewSignupUserImplFromJson(Map<String, dynamic> json) =>
    _$NewSignupUserImpl(
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
      passwordRepeat: json['passwordRepeat'] as String? ?? '',
    );

Map<String, dynamic> _$$NewSignupUserImplToJson(_$NewSignupUserImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'passwordRepeat': instance.passwordRepeat,
    };
