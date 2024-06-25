// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubjectStruct extends BaseStruct {
  SubjectStruct({
    String? id,
    String? subjectName,
    String? image,
    String? subjectCode,
    String? information,
    String? classes,
    DateTime? createdAt,
  })  : _id = id,
        _subjectName = subjectName,
        _image = image,
        _subjectCode = subjectCode,
        _information = information,
        _classes = classes,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "subjectName" field.
  String? _subjectName;
  String get subjectName => _subjectName ?? '';
  set subjectName(String? val) => _subjectName = val;

  bool hasSubjectName() => _subjectName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "subjectCode" field.
  String? _subjectCode;
  String get subjectCode => _subjectCode ?? '';
  set subjectCode(String? val) => _subjectCode = val;

  bool hasSubjectCode() => _subjectCode != null;

  // "information" field.
  String? _information;
  String get information => _information ?? '';
  set information(String? val) => _information = val;

  bool hasInformation() => _information != null;

  // "classes" field.
  String? _classes;
  String get classes => _classes ?? '';
  set classes(String? val) => _classes = val;

  bool hasClasses() => _classes != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static SubjectStruct fromMap(Map<String, dynamic> data) => SubjectStruct(
        id: data['id'] as String?,
        subjectName: data['subjectName'] as String?,
        image: data['image'] as String?,
        subjectCode: data['subjectCode'] as String?,
        information: data['information'] as String?,
        classes: data['classes'] as String?,
        createdAt: data['createdAt'] as DateTime?,
      );

  static SubjectStruct? maybeFromMap(dynamic data) =>
      data is Map ? SubjectStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'subjectName': _subjectName,
        'image': _image,
        'subjectCode': _subjectCode,
        'information': _information,
        'classes': _classes,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'subjectName': serializeParam(
          _subjectName,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'subjectCode': serializeParam(
          _subjectCode,
          ParamType.String,
        ),
        'information': serializeParam(
          _information,
          ParamType.String,
        ),
        'classes': serializeParam(
          _classes,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static SubjectStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubjectStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        subjectName: deserializeParam(
          data['subjectName'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        subjectCode: deserializeParam(
          data['subjectCode'],
          ParamType.String,
          false,
        ),
        information: deserializeParam(
          data['information'],
          ParamType.String,
          false,
        ),
        classes: deserializeParam(
          data['classes'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'SubjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubjectStruct &&
        id == other.id &&
        subjectName == other.subjectName &&
        image == other.image &&
        subjectCode == other.subjectCode &&
        information == other.information &&
        classes == other.classes &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, subjectName, image, subjectCode, information, classes, createdAt]);
}

SubjectStruct createSubjectStruct({
  String? id,
  String? subjectName,
  String? image,
  String? subjectCode,
  String? information,
  String? classes,
  DateTime? createdAt,
}) =>
    SubjectStruct(
      id: id,
      subjectName: subjectName,
      image: image,
      subjectCode: subjectCode,
      information: information,
      classes: classes,
      createdAt: createdAt,
    );
