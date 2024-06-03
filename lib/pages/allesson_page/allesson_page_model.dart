import '/flutter_flow/flutter_flow_util.dart';
import 'allesson_page_widget.dart' show AllessonPageWidget;
import 'package:flutter/material.dart';

class AllessonPageModel extends FlutterFlowModel<AllessonPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
