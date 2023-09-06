import 'package:flutter/material.dart';

class LogginModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_Password widget.
  TextEditingController? txtPasswordController;
  String? Function(String?)? txtPasswordControllerValidator;
  // State field(s) for txt_UserName widget.
  TextEditingController? txtUserNameController;
  String? Function(String?)? txtUserNameControllerValidator;

  String? errorTextPassword;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    // Initialize state of txt_Password widget.
    txtPasswordControllerValidator = (String? value) {
      if (value == null || value.isEmpty) {
        errorTextPassword = 'Please enter your password';
        return 'Please enter your password';
      }
      errorTextPassword = null;
      return null;
    };
    // Initialize state of txt_UserName widget.
    txtUserNameControllerValidator = (String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your username';
      }
      return null;
    };
    errorTextPassword = null;
  }

  void dispose() {
    unfocusNode.dispose();
    txtPasswordController?.dispose();
    txtUserNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
