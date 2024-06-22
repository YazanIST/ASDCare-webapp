import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_instruct_widget.dart' show AddInstructWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddInstructModel extends FlutterFlowModel<AddInstructWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for newInstruction widget.
  FocusNode? newInstructionFocusNode;
  TextEditingController? newInstructionTextController;
  String? Function(BuildContext, String?)?
      newInstructionTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add Doctor Instruction)] action in Button widget.
  ApiCallResponse? apiResultifm;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newInstructionFocusNode?.dispose();
    newInstructionTextController?.dispose();
  }
}
