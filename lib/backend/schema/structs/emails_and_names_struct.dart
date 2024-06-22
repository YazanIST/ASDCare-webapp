// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailsAndNamesStruct extends FFFirebaseStruct {
  EmailsAndNamesStruct({
    String? firstName,
    String? lastName,
    String? email,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstName = firstName,
        _lastName = lastName,
        _email = email,
        super(firestoreUtilData);

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static EmailsAndNamesStruct fromMap(Map<String, dynamic> data) =>
      EmailsAndNamesStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
      );

  static EmailsAndNamesStruct? maybeFromMap(dynamic data) => data is Map
      ? EmailsAndNamesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmailsAndNamesStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmailsAndNamesStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmailsAndNamesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmailsAndNamesStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([firstName, lastName, email]);
}

EmailsAndNamesStruct createEmailsAndNamesStruct({
  String? firstName,
  String? lastName,
  String? email,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EmailsAndNamesStruct(
      firstName: firstName,
      lastName: lastName,
      email: email,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EmailsAndNamesStruct? updateEmailsAndNamesStruct(
  EmailsAndNamesStruct? emailsAndNames, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    emailsAndNames
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEmailsAndNamesStructData(
  Map<String, dynamic> firestoreData,
  EmailsAndNamesStruct? emailsAndNames,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (emailsAndNames == null) {
    return;
  }
  if (emailsAndNames.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && emailsAndNames.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final emailsAndNamesData =
      getEmailsAndNamesFirestoreData(emailsAndNames, forFieldValue);
  final nestedData =
      emailsAndNamesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = emailsAndNames.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEmailsAndNamesFirestoreData(
  EmailsAndNamesStruct? emailsAndNames, [
  bool forFieldValue = false,
]) {
  if (emailsAndNames == null) {
    return {};
  }
  final firestoreData = mapToFirestore(emailsAndNames.toMap());

  // Add any Firestore field values
  emailsAndNames.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEmailsAndNamesListFirestoreData(
  List<EmailsAndNamesStruct>? emailsAndNamess,
) =>
    emailsAndNamess
        ?.map((e) => getEmailsAndNamesFirestoreData(e, true))
        .toList() ??
    [];
