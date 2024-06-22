import '/flutter_flow/flutter_flow_util.dart';
import 'doctor_reset_password_widget.dart' show DoctorResetPasswordWidget;
import 'package:flutter/material.dart';

class DoctorResetPasswordModel
    extends FlutterFlowModel<DoctorResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PINCode widget.
  FocusNode? pINCodeFocusNode;
  TextEditingController? pINCodeTextController;
  String? Function(BuildContext, String?)? pINCodeTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pINCodeFocusNode?.dispose();
    pINCodeTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
