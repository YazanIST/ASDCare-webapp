import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Parent Email For Doctor)] action in DashboardCard_3 widget.
  ApiCallResponse? apiResult9mc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
