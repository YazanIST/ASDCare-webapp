import '/flutter_flow/flutter_flow_util.dart';
import '/pages/parent_main_flow/chat/chat_thread_component/chat_thread_component_widget.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ChatThreadComponent component.
  late ChatThreadComponentModel chatThreadComponentModel;

  @override
  void initState(BuildContext context) {
    chatThreadComponentModel =
        createModel(context, () => ChatThreadComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chatThreadComponentModel.dispose();
  }
}
