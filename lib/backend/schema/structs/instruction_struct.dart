// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class InstructionStruct extends FFFirebaseStruct {
  InstructionStruct({
    String? email,
    String? instruction,
    String? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _instruction = instruction,
        _id = id,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "instruction" field.
  String? _instruction;
  String get instruction => _instruction ?? '';
  set instruction(String? val) => _instruction = val;

  bool hasInstruction() => _instruction != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static InstructionStruct fromMap(Map<String, dynamic> data) =>
      InstructionStruct(
        email: data['email'] as String?,
        instruction: data['instruction'] as String?,
        id: data['id'] as String?,
      );

  static InstructionStruct? maybeFromMap(dynamic data) => data is Map
      ? InstructionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'instruction': _instruction,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'instruction': serializeParam(
          _instruction,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static InstructionStruct fromSerializableMap(Map<String, dynamic> data) =>
      InstructionStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        instruction: deserializeParam(
          data['instruction'],
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
  String toString() => 'InstructionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InstructionStruct &&
        email == other.email &&
        instruction == other.instruction &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([email, instruction, id]);
}

InstructionStruct createInstructionStruct({
  String? email,
  String? instruction,
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InstructionStruct(
      email: email,
      instruction: instruction,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InstructionStruct? updateInstructionStruct(
  InstructionStruct? instructionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    instructionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInstructionStructData(
  Map<String, dynamic> firestoreData,
  InstructionStruct? instructionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (instructionStruct == null) {
    return;
  }
  if (instructionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && instructionStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final instructionStructData =
      getInstructionFirestoreData(instructionStruct, forFieldValue);
  final nestedData =
      instructionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = instructionStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInstructionFirestoreData(
  InstructionStruct? instructionStruct, [
  bool forFieldValue = false,
]) {
  if (instructionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(instructionStruct.toMap());

  // Add any Firestore field values
  instructionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInstructionListFirestoreData(
  List<InstructionStruct>? instructionStructs,
) =>
    instructionStructs
        ?.map((e) => getInstructionFirestoreData(e, true))
        .toList() ??
    [];
