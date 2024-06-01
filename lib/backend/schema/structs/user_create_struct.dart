// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCreateStruct extends BaseStruct {
  UserCreateStruct({
    String? username,
    String? email,
    String? password,
    String? fullName,
    String? roleId,
  })  : _username = username,
        _email = email,
        _password = password,
        _fullName = fullName,
        _roleId = roleId;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;
  bool hasFullName() => _fullName != null;

  // "roleId" field.
  String? _roleId;
  String get roleId => _roleId ?? '';
  set roleId(String? val) => _roleId = val;
  bool hasRoleId() => _roleId != null;

  static UserCreateStruct fromMap(Map<String, dynamic> data) =>
      UserCreateStruct(
        username: data['username'] as String?,
        email: data['email'] as String?,
        password: data['password'] as String?,
        fullName: data['fullName'] as String?,
        roleId: data['roleId'] as String?,
      );

  static UserCreateStruct? maybeFromMap(dynamic data) => data is Map
      ? UserCreateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'username': _username,
        'email': _email,
        'password': _password,
        'fullName': _fullName,
        'roleId': _roleId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'roleId': serializeParam(
          _roleId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserCreateStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserCreateStruct(
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        roleId: deserializeParam(
          data['roleId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserCreateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserCreateStruct &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        fullName == other.fullName &&
        roleId == other.roleId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([username, email, password, fullName, roleId]);
}

UserCreateStruct createUserCreateStruct({
  String? username,
  String? email,
  String? password,
  String? fullName,
  String? roleId,
}) =>
    UserCreateStruct(
      username: username,
      email: email,
      password: password,
      fullName: fullName,
      roleId: roleId,
    );
