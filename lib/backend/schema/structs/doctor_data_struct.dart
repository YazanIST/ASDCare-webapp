// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DoctorDataStruct extends FFFirebaseStruct {
  DoctorDataStruct({
    String? email,
    String? username,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _username = username,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  static DoctorDataStruct fromMap(Map<String, dynamic> data) =>
      DoctorDataStruct(
        email: data['email'] as String?,
        username: data['username'] as String?,
      );

  static DoctorDataStruct? maybeFromMap(dynamic data) => data is Map
      ? DoctorDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'username': _username,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
      }.withoutNulls;

  static DoctorDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DoctorDataStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DoctorDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DoctorDataStruct &&
        email == other.email &&
        username == other.username;
  }

  @override
  int get hashCode => const ListEquality().hash([email, username]);
}

DoctorDataStruct createDoctorDataStruct({
  String? email,
  String? username,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DoctorDataStruct(
      email: email,
      username: username,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DoctorDataStruct? updateDoctorDataStruct(
  DoctorDataStruct? doctorData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    doctorData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDoctorDataStructData(
  Map<String, dynamic> firestoreData,
  DoctorDataStruct? doctorData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (doctorData == null) {
    return;
  }
  if (doctorData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && doctorData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final doctorDataData = getDoctorDataFirestoreData(doctorData, forFieldValue);
  final nestedData = doctorDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = doctorData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDoctorDataFirestoreData(
  DoctorDataStruct? doctorData, [
  bool forFieldValue = false,
]) {
  if (doctorData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(doctorData.toMap());

  // Add any Firestore field values
  doctorData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDoctorDataListFirestoreData(
  List<DoctorDataStruct>? doctorDatas,
) =>
    doctorDatas?.map((e) => getDoctorDataFirestoreData(e, true)).toList() ?? [];
