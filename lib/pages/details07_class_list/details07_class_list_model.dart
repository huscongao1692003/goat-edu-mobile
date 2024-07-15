import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details07_class_list_widget.dart' show Details07ClassListWidget;
import 'package:flutter/material.dart';

class Details07ClassListModel
    extends FlutterFlowModel<Details07ClassListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (EnrollSubject)] action in Button widget.
  ApiCallResponse? apiResult8ss;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
