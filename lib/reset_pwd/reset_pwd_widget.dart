import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPwdWidget extends StatefulWidget {
  const ResetPwdWidget({Key key}) : super(key: key);

  @override
  _ResetPwdWidgetState createState() => _ResetPwdWidgetState();
}

class _ResetPwdWidgetState extends State<ResetPwdWidget> {
  TextEditingController confPwdController;
  bool confPwdVisibility;
  TextEditingController currPwdController;
  bool currPwdVisibility;
  TextEditingController newPwdController;
  bool newPwdVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confPwdController = TextEditingController();
    confPwdVisibility = false;
    currPwdController = TextEditingController();
    currPwdVisibility = false;
    newPwdController = TextEditingController();
    newPwdVisibility = false;
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
                'assets/images/cropped-104336826_140397510962671_14613263856390329-1-32x32-2-large.png',
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
      body: SafeArea(
        child: GestureDetector(
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
                    'Reset Password',
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
                        controller: currPwdController,
                        obscureText: !currPwdVisibility,
                        decoration: InputDecoration(
                          labelText: 'current password *',
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
                              () => currPwdVisibility = !currPwdVisibility,
                            ),
                            child: Icon(
                              currPwdVisibility
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: TextFormField(
                        controller: newPwdController,
                        obscureText: !newPwdVisibility,
                        decoration: InputDecoration(
                          labelText: 'new password *',
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
                              () => newPwdVisibility = !newPwdVisibility,
                            ),
                            child: Icon(
                              newPwdVisibility
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: TextFormField(
                        controller: confPwdController,
                        obscureText: !confPwdVisibility,
                        decoration: InputDecoration(
                          labelText: 'confirm password *',
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
                              () => confPwdVisibility = !confPwdVisibility,
                            ),
                            child: Icon(
                              confPwdVisibility
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 30),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Reset Password',
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Back to.',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'inter sans serif',
                            color: Colors.black,
                            useGoogleFonts: false,
                          ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
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
      ),
    );
  }
}
