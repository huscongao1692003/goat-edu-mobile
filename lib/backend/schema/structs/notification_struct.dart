// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationStruct extends BaseStruct {
  NotificationStruct({
    String? notificationName,
    String? notificationMessage,
    String? id,
  })  : _notificationName = notificationName,
        _notificationMessage = notificationMessage,
        _id = id;

  // "notificationName" field.
  String? _notificationName;
  String get notificationName => _notificationName ?? '';
  set notificationName(String? val) => _notificationName = val;

  bool hasNotificationName() => _notificationName != null;

  // "notificationMessage" field.
  String? _notificationMessage;
  String get notificationMessage => _notificationMessage ?? '';
  set notificationMessage(String? val) => _notificationMessage = val;

  bool hasNotificationMessage() => _notificationMessage != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static NotificationStruct fromMap(Map<String, dynamic> data) =>
      NotificationStruct(
        notificationName: data['notificationName'] as String?,
        notificationMessage: data['notificationMessage'] as String?,
        id: data['id'] as String?,
      );

  static NotificationStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'notificationName': _notificationName,
        'notificationMessage': _notificationMessage,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'notificationName': serializeParam(
          _notificationName,
          ParamType.String,
        ),
        'notificationMessage': serializeParam(
          _notificationMessage,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationStruct(
        notificationName: deserializeParam(
          data['notificationName'],
          ParamType.String,
          false,
        ),
        notificationMessage: deserializeParam(
          data['notificationMessage'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationStruct &&
        notificationName == other.notificationName &&
        notificationMessage == other.notificationMessage &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([notificationName, notificationMessage, id]);
}

NotificationStruct createNotificationStruct({
  String? notificationName,
  String? notificationMessage,
  String? id,
}) =>
    NotificationStruct(
      notificationName: notificationName,
      notificationMessage: notificationMessage,
      id: id,
    );
