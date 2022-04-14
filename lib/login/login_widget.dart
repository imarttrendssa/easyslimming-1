import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgot_pwd/forgot_pwd_widget.dart';
import '../main.dart';
import '../signup/signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController loginEmailController;
  TextEditingController loginPwdController;
  bool loginPwdVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    loginEmailController = TextEditingController();
    loginPwdController = TextEditingController();
    loginPwdVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E5E5),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 200, 0),
              child: Image.asset(
                'assets/images/easyslim.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavBarPage(initialPage: 'HomePage'),
                  ),
                );
              },
              child: Text(
                'Skip',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'inter sans serif',
                      color: Colors.black,
                      fontSize: 25,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE5E5E5),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 50, 0, 0),
                child: Text(
                  'Hey ,\nLogin Now',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'inter sans serif',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: TextFormField(
                      controller: loginEmailController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Username Or Email',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        hintStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDDDDDD),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDDDDDD),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'inter sans serif',
                            color: Colors.black,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: TextFormField(
                      controller: loginPwdController,
                      obscureText: !loginPwdVisibility,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        hintStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDDDDDD),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDDDDDD),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => loginPwdVisibility = !loginPwdVisibility,
                          ),
                          child: Icon(
                            loginPwdVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'inter sans serif',
                            color: Colors.black,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 10),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPwdWidget(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'inter sans serif',
                          color: Color(0xFFED1B6F),
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 30),
              child: FFButtonWidget(
                onPressed: () async {
                  final user = await signInWithEmail(
                    context,
                    loginEmailController.text,
                    loginPwdController.text,
                  );
                  if (user == null) {
                    return;
                  }

                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'HomePage'),
                    ),
                    (r) => false,
                  );
                },
                text: 'Sign In',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50,
                  color: Color(0xFFED1B6F),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'inter sans serif',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () async {
                      final user = await signInWithGoogle(context);
                      if (user == null) {
                        return;
                      }
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavBarPage(initialPage: 'HomePage'),
                        ),
                        (r) => false,
                      );
                    },
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      color: Color(0xFF00BCD4),
                      size: 30,
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.facebookSquare,
                    color: Color(0xFF224799),
                    size: 30,
                  ),
                  InkWell(
                    onTap: () async {
                      final user = await signInWithApple(context);
                      if (user == null) {
                        return;
                      }
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NavBarPage(initialPage: 'HomePage'),
                        ),
                        (r) => false,
                      );
                    },
                    child: FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupWidget(),
                        ),
                      );
                    },
                    child: Text(
                      'if you are new ? ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'inter sans serif',
                            color: Colors.black,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupWidget(),
                        ),
                      );
                    },
                    child: Text(
                      'Create Now',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'inter sans serif',
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
