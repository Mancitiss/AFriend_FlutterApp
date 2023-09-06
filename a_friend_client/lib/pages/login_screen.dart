import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import 'loggin_model.dart';
export 'loggin_model.dart';

class LogginWidget extends StatefulWidget {
  const LogginWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LogginWidgetState createState() => _LogginWidgetState();
}

class _LogginWidgetState extends State<LogginWidget> {
  late LogginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = LogginModel();
    _model.initState(context);
    _model.txtPasswordController ??= TextEditingController();
    _model.txtUserNameController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF9CC9A0),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0, -1),
            child: Stack(
              children: [
                const Align(
                  alignment: AlignmentDirectional(0, -0.8),
                  child: Text(
                    'LOG IN ACCOUNT',
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, -0.1),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _model.txtPasswordController,
                        autofocus: true,
                        obscureText: true,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x93064F0C),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x77002BC5),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: _model.txtPasswordControllerValidator,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, -0.45),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _model.txtUserNameController,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'User Name',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x93064F0C),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x77002BC5),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        validator: _model.txtUserNameControllerValidator,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.4),
                  child: ElevatedButton(
                    onPressed: () async {
                      context.pushNamed('AFriendHome');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 50),
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      backgroundColor: const Color(0xB45C84F2),
                      textStyle: const TextStyle(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                      elevation: 3,
                      side: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('Log In'),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.14),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('ForgotPassword');
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Forgot Password?',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.black.withOpacity(0.54),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                        style: const TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color(0x1C0CC71C),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, 0.6),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('SignUp');
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Sign up here!',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0x86000000),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color(0x1C0CC71C),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
