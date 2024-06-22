import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "doctorEmail" field.
  String? _doctorEmail;
  String get doctorEmail => _doctorEmail ?? '';
  bool hasDoctorEmail() => _doctorEmail != null;

  // "parentEmail" field.
  String? _parentEmail;
  String get parentEmail => _parentEmail ?? '';
  bool hasParentEmail() => _parentEmail != null;

  // "childEmail" field.
  String? _childEmail;
  String get childEmail => _childEmail ?? '';
  bool hasChildEmail() => _childEmail != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "senderType" field.
  String? _senderType;
  String get senderType => _senderType ?? '';
  bool hasSenderType() => _senderType != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  void _initializeFields() {
    _doctorEmail = snapshotData['doctorEmail'] as String?;
    _parentEmail = snapshotData['parentEmail'] as String?;
    _childEmail = snapshotData['childEmail'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _senderType = snapshotData['senderType'] as String?;
    _image = snapshotData['image'] as String?;
    _text = snapshotData['text'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  String? doctorEmail,
  String? parentEmail,
  String? childEmail,
  DateTime? timestamp,
  String? senderType,
  String? image,
  String? text,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctorEmail': doctorEmail,
      'parentEmail': parentEmail,
      'childEmail': childEmail,
      'timestamp': timestamp,
      'senderType': senderType,
      'image': image,
      'text': text,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    return e1?.doctorEmail == e2?.doctorEmail &&
        e1?.parentEmail == e2?.parentEmail &&
        e1?.childEmail == e2?.childEmail &&
        e1?.timestamp == e2?.timestamp &&
        e1?.senderType == e2?.senderType &&
        e1?.image == e2?.image &&
        e1?.text == e2?.text;
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality().hash([
        e?.doctorEmail,
        e?.parentEmail,
        e?.childEmail,
        e?.timestamp,
        e?.senderType,
        e?.image,
        e?.text
      ]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}
