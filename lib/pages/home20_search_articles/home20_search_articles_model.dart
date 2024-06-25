import '/flutter_flow/flutter_flow_util.dart';
import 'home20_search_articles_widget.dart' show Home20SearchArticlesWidget;
import 'package:flutter/material.dart';

class Home20SearchArticlesModel
    extends FlutterFlowModel<Home20SearchArticlesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
