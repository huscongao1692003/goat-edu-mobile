import '/flutter_flow/flutter_flow_util.dart';
import 'flashcard_detail_widget.dart' show FlashcardDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class FlashcardDetailModel extends FlutterFlowModel<FlashcardDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}
}
