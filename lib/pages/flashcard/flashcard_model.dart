import '/flutter_flow/flutter_flow_util.dart';
import 'flashcard_widget.dart' show FlashcardWidget;
import 'package:flutter/material.dart';

class FlashcardModel extends FlutterFlowModel<FlashcardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
