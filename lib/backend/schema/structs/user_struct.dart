// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? userId,
    String? username,
    String? fullname,
    String? email,
    String? image,
    String? token,
  })  : _userId = userId,
        _username = username,
        _fullname = fullname,
        _email = email,
        _image = image,
        _token = token;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  set fullname(String? val) => _fullname = val;

  bool hasFullname() => _fullname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "image" field.
  String? _image;
  String get image =>
      _image ??
      'https://www.verstappen.com/img/thumb/thumb.php?src=/img/product/1350_b3af8e9_jaarhelm_2023_max_verstappen_5.png&w=700&f=png';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        userId: data['userId'] as String?,
        username: data['username'] as String?,
        fullname: data['fullname'] as String?,
        email: data['email'] as String?,
        image: data['image'] as String?,
        token: data['token'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'username': _username,
        'fullname': _fullname,
        'email': _email,
        'image': _image,
        'token': _token,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'fullname': serializeParam(
          _fullname,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        fullname: deserializeParam(
          data['fullname'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        userId == other.userId &&
        username == other.username &&
        fullname == other.fullname &&
        email == other.email &&
        image == other.image &&
        token == other.token;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userId, username, fullname, email, image, token]);
}

UserStruct createUserStruct({
  String? userId,
  String? username,
  String? fullname,
  String? email,
  String? image,
  String? token,
}) =>
    UserStruct(
      userId: userId,
      username: username,
      fullname: fullname,
      email: email,
      image: image,
      token: token,
    );
