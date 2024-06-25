import '/flutter_flow/flutter_flow_util.dart';
import 'postdetail_widget.dart' show PostdetailWidget;
import 'package:flutter/material.dart';

class PostdetailModel extends FlutterFlowModel<PostdetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
