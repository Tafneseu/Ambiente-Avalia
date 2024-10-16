import '/flutter_flow/flutter_flow_util.dart';
import 'log_widget.dart' show LogWidget;
import 'package:flutter/material.dart';

class LogModel extends FlutterFlowModel<LogWidget> {
  ///  Local state fields for this page.

  bool? create = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emaillogin widget.
  FocusNode? emailloginFocusNode;
  TextEditingController? emailloginTextController;
  String? Function(BuildContext, String?)? emailloginTextControllerValidator;
  // State field(s) for senhalogin widget.
  FocusNode? senhaloginFocusNode;
  TextEditingController? senhaloginTextController;
  late bool senhaloginVisibility;
  String? Function(BuildContext, String?)? senhaloginTextControllerValidator;
  // State field(s) for emailcadastro widget.
  FocusNode? emailcadastroFocusNode;
  TextEditingController? emailcadastroTextController;
  String? Function(BuildContext, String?)? emailcadastroTextControllerValidator;
  // State field(s) for senhacadastro widget.
  FocusNode? senhacadastroFocusNode;
  TextEditingController? senhacadastroTextController;
  late bool senhacadastroVisibility;
  String? Function(BuildContext, String?)? senhacadastroTextControllerValidator;
  // State field(s) for senhaconfirma widget.
  FocusNode? senhaconfirmaFocusNode;
  TextEditingController? senhaconfirmaTextController;
  late bool senhaconfirmaVisibility;
  String? Function(BuildContext, String?)? senhaconfirmaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaloginVisibility = false;
    senhacadastroVisibility = false;
    senhaconfirmaVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailloginFocusNode?.dispose();
    emailloginTextController?.dispose();

    senhaloginFocusNode?.dispose();
    senhaloginTextController?.dispose();

    emailcadastroFocusNode?.dispose();
    emailcadastroTextController?.dispose();

    senhacadastroFocusNode?.dispose();
    senhacadastroTextController?.dispose();

    senhaconfirmaFocusNode?.dispose();
    senhaconfirmaTextController?.dispose();
  }
}
