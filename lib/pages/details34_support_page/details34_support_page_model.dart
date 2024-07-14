import '/components/infomation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details34_support_page_widget.dart' show Details34SupportPageWidget;
import 'package:flutter/material.dart';

class Details34SupportPageModel
    extends FlutterFlowModel<Details34SupportPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Infomation component.
  late InfomationModel infomationModel;

  @override
  void initState(BuildContext context) {
    infomationModel = createModel(context, () => InfomationModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    infomationModel.dispose();
  }
}
