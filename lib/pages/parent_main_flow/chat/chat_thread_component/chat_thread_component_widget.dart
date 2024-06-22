import '/backend/backend.dart';
import '/components/empty_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/parent_main_flow/chat/message_component/message_component_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_thread_component_model.dart';
export 'chat_thread_component_model.dart';

class ChatThreadComponentWidget extends StatefulWidget {
  const ChatThreadComponentWidget({
    super.key,
    required this.parentEmail,
    required this.doctorEmail,
    required this.childEmail,
  });

  final String? parentEmail;
  final String? doctorEmail;
  final String? childEmail;

  @override
  State<ChatThreadComponentWidget> createState() =>
      _ChatThreadComponentWidgetState();
}

class _ChatThreadComponentWidgetState extends State<ChatThreadComponentWidget> {
  late ChatThreadComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatThreadComponentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: StreamBuilder<List<MessagesRecord>>(
              stream: queryMessagesRecord(
                queryBuilder: (messagesRecord) => messagesRecord
                    .where(
                      'doctorEmail',
                      isEqualTo:
                          widget.doctorEmail != '' ? widget.doctorEmail : null,
                    )
                    .where(
                      'parentEmail',
                      isEqualTo:
                          widget.parentEmail != '' ? widget.parentEmail : null,
                    )
                    .where(
                      'childEmail',
                      isEqualTo:
                          widget.childEmail != '' ? widget.childEmail : null,
                    )
                    .orderBy('timestamp', descending: true),
                limit: 50,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<MessagesRecord> listViewMessagesRecordList =
                    snapshot.data!;
                if (listViewMessagesRecordList.isEmpty) {
                  return EmptyComponentWidget();
                }
                return ListView.builder(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    12.0,
                    0,
                    24.0,
                  ),
                  reverse: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewMessagesRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewMessagesRecord =
                        listViewMessagesRecordList[listViewIndex];
                    return Container(
                      decoration: BoxDecoration(),
                      child: MessageComponentWidget(
                        key: Key(
                            'Keywo5_${listViewIndex}_of_${listViewMessagesRecordList.length}'),
                        message: listViewMessagesRecord,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    -2.0,
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 60.0,
                          borderWidth: 0.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: Icon(
                            Icons.add_rounded,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onFieldSubmitted: (_) async {
                                      // newChatMessage

                                      var messagesRecordReference =
                                          MessagesRecord.collection.doc();
                                      await messagesRecordReference
                                          .set(createMessagesRecordData(
                                        doctorEmail: widget.doctorEmail,
                                        parentEmail: widget.parentEmail,
                                        childEmail: widget.childEmail,
                                        timestamp: getCurrentTimestamp,
                                        senderType: 'DOCTOR',
                                        text: _model.textController.text,
                                      ));
                                      _model.newChatMessage =
                                          MessagesRecord.getDocumentFromData(
                                              createMessagesRecordData(
                                                doctorEmail: widget.doctorEmail,
                                                parentEmail: widget.parentEmail,
                                                childEmail: widget.childEmail,
                                                timestamp: getCurrentTimestamp,
                                                senderType: 'DOCTOR',
                                                text:
                                                    _model.textController.text,
                                              ),
                                              messagesRecordReference);
                                      setState(() {
                                        _model.textController?.clear();
                                      });

                                      setState(() {});
                                    },
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    textInputAction: TextInputAction.send,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Start typing here...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 16.0, 56.0, 16.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLines: 12,
                                    minLines: 1,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 6.0, 4.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 20.0,
                                    borderWidth: 0.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      // newChatMessage

                                      var messagesRecordReference =
                                          MessagesRecord.collection.doc();
                                      await messagesRecordReference
                                          .set(createMessagesRecordData(
                                        doctorEmail: widget.doctorEmail,
                                        parentEmail: widget.parentEmail,
                                        childEmail: widget.childEmail,
                                        timestamp: getCurrentTimestamp,
                                        senderType: 'DOCTOR',
                                        text: _model.textController.text,
                                      ));
                                      _model.newChat =
                                          MessagesRecord.getDocumentFromData(
                                              createMessagesRecordData(
                                                doctorEmail: widget.doctorEmail,
                                                parentEmail: widget.parentEmail,
                                                childEmail: widget.childEmail,
                                                timestamp: getCurrentTimestamp,
                                                senderType: 'DOCTOR',
                                                text:
                                                    _model.textController.text,
                                              ),
                                              messagesRecordReference);
                                      setState(() {
                                        _model.textController?.clear();
                                      });

                                      setState(() {});
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
