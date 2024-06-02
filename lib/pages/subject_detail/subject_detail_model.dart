import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subject_detail_widget.dart' show SubjectDetailWidget;
import 'package:flutter/material.dart';

class SubjectDetailModel extends FlutterFlowModel<SubjectDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetSubjectById)] action in Column widget.
  ApiCallResponse? singleSubject;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
