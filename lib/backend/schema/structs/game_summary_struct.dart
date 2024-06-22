// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameSummaryStruct extends FFFirebaseStruct {
  GameSummaryStruct({
    String? gameSubject,
    String? gameSummary,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _gameSubject = gameSubject,
        _gameSummary = gameSummary,
        super(firestoreUtilData);

  // "gameSubject" field.
  String? _gameSubject;
  String get gameSubject => _gameSubject ?? '';
  set gameSubject(String? val) => _gameSubject = val;

  bool hasGameSubject() => _gameSubject != null;

  // "gameSummary" field.
  String? _gameSummary;
  String get gameSummary => _gameSummary ?? '';
  set gameSummary(String? val) => _gameSummary = val;

  bool hasGameSummary() => _gameSummary != null;

  static GameSummaryStruct fromMap(Map<String, dynamic> data) =>
      GameSummaryStruct(
        gameSubject: data['gameSubject'] as String?,
        gameSummary: data['gameSummary'] as String?,
      );

  static GameSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? GameSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'gameSubject': _gameSubject,
        'gameSummary': _gameSummary,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'gameSubject': serializeParam(
          _gameSubject,
          ParamType.String,
        ),
        'gameSummary': serializeParam(
          _gameSummary,
          ParamType.String,
        ),
      }.withoutNulls;

  static GameSummaryStruct fromSerializableMap(Map<String, dynamic> data) =>
      GameSummaryStruct(
        gameSubject: deserializeParam(
          data['gameSubject'],
          ParamType.String,
          false,
        ),
        gameSummary: deserializeParam(
          data['gameSummary'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GameSummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GameSummaryStruct &&
        gameSubject == other.gameSubject &&
        gameSummary == other.gameSummary;
  }

  @override
  int get hashCode => const ListEquality().hash([gameSubject, gameSummary]);
}

GameSummaryStruct createGameSummaryStruct({
  String? gameSubject,
  String? gameSummary,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GameSummaryStruct(
      gameSubject: gameSubject,
      gameSummary: gameSummary,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GameSummaryStruct? updateGameSummaryStruct(
  GameSummaryStruct? gameSummaryStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    gameSummaryStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGameSummaryStructData(
  Map<String, dynamic> firestoreData,
  GameSummaryStruct? gameSummaryStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gameSummaryStruct == null) {
    return;
  }
  if (gameSummaryStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && gameSummaryStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gameSummaryStructData =
      getGameSummaryFirestoreData(gameSummaryStruct, forFieldValue);
  final nestedData =
      gameSummaryStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = gameSummaryStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGameSummaryFirestoreData(
  GameSummaryStruct? gameSummaryStruct, [
  bool forFieldValue = false,
]) {
  if (gameSummaryStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(gameSummaryStruct.toMap());

  // Add any Firestore field values
  gameSummaryStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGameSummaryListFirestoreData(
  List<GameSummaryStruct>? gameSummaryStructs,
) =>
    gameSummaryStructs
        ?.map((e) => getGameSummaryFirestoreData(e, true))
        .toList() ??
    [];
