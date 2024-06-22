import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'verify_doctor_register_widget.dart' show VerifyDoctorRegisterWidget;
import 'package:flutter/material.dart';

class VerifyDoctorRegisterModel
    extends FlutterFlowModel<VerifyDoctorRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for enteredPincode widget.
  FocusNode? enteredPincodeFocusNode;
  TextEditingController? enteredPincodeTextController;
  String? Function(BuildContext, String?)?
      enteredPincodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Register Doctor)] action in Button widget.
  ApiCallResponse? apiResultgb6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    enteredPincodeFocusNode?.dispose();
    enteredPincodeTextController?.dispose();
  }
}
