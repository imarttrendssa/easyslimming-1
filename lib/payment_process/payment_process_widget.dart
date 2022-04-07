import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentProcessWidget extends StatefulWidget {
  const PaymentProcessWidget({Key key}) : super(key: key);

  @override
  _PaymentProcessWidgetState createState() => _PaymentProcessWidgetState();
}

class _PaymentProcessWidgetState extends State<PaymentProcessWidget> {
  PageController pageViewController;
  String dropDownValue;
  TextEditingController cNameController;
  TextEditingController fNameController;
  TextEditingController lNameController;
  TextEditingController sNameController;
  TextEditingController tNameController;
  TextEditingController pNameController;
  TextEditingController zNameController;
  TextEditingController phoneController;
  TextEditingController emailController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    cNameController = TextEditingController();
    fNameController = TextEditingController();
    lNameController = TextEditingController();
    sNameController = TextEditingController();
    tNameController = TextEditingController();
    pNameController = TextEditingController();
    zNameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                color: Color(0xFFED1B6F),
                size: 24,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 50, 10),
                child: Text(
                  'Checkout',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'inter sans serif',
                        color: Color(0xFFED1B6F),
                        fontSize: 40,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  fNameController.clear();
                  lNameController.clear();
                  cNameController.clear();
                  sNameController.clear();
                  tNameController.clear();
                  pNameController.clear();
                  zNameController.clear();
                  phoneController.clear();
                  emailController.clear();
                });
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavBarPage(initialPage: 'cart'),
                  ),
                );
              },
              child: Icon(
                Icons.close_outlined,
                color: Color(0xFFED1B6F),
                size: 20,
              ),
            ),
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: PageView(
                      controller: pageViewController ??=
                          PageController(initialPage: 0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 5, 0),
                                      child: TextFormField(
                                        controller: fNameController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'First name',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFDDDDDD),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFDDDDDD),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 20, 0, 20),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'inter sans serif',
                                              color: Colors.black,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: lNameController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Last name',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFDDDDDD),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFDDDDDD),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 20, 0, 20),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                              child: TextFormField(
                                controller: cNameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Company name',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
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
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 0, 20),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: FlutterFlowDropDown(
                                options:
                                    ['', 'South Africa', 'Lesotho'].toList(),
                                onChanged: (val) =>
                                    setState(() => dropDownValue = val),
                                width: double.infinity,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                                hintText: 'Country / Region',
                                fillColor: Color(0x00101213),
                                elevation: 2,
                                borderColor: Color(0xFFDDDDDD),
                                borderWidth: 0,
                                borderRadius: 0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                              child: TextFormField(
                                controller: sNameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Street Address',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
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
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 0, 20),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                              child: TextFormField(
                                controller: tNameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Town / City',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
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
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 0, 20),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                              child: TextFormField(
                                controller: pNameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Province',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
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
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 0, 20),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                              child: TextFormField(
                                controller: zNameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Postcode / Zip',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
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
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 0, 20),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                              child: TextFormField(
                                controller: phoneController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Phone',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
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
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 0, 20),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                              child: TextFormField(
                                controller: emailController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: ' Email',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
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
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 0, 20),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Proceed',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50,
                                  color: Color(0xFFED1B6F),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
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
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 50, 10),
                                child: Text(
                                  'Choose Payment plan',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'inter sans serif',
                                        color: Color(0xFFED1B6F),
                                        fontSize: 30,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 15),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30, 0, 30, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.circle,
                                              color: Color(0xFF224799),
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 90, 5),
                                            child: Image.asset(
                                              'assets/images/visa.png',
                                              width: 150,
                                              height: 45,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFFED1B6F),
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 15),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30, 0, 30, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.circle,
                                              color: Color(0xFF224799),
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 90, 5),
                                            child: Image.asset(
                                              'assets/images/x5rbw_5.png',
                                              width: 150,
                                              height: 40,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFFED1B6F),
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 15),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30, 0, 30, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.circle,
                                              color: Color(0xFF224799),
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 90, 5),
                                            child: Image.asset(
                                              'assets/images/ml88i_4.png',
                                              width: 150,
                                              height: 40,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFFED1B6F),
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 15),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30, 0, 30, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.circle,
                                              color: Color(0xFF224799),
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 90, 5),
                                            child: Image.asset(
                                              'assets/images/albfo_3.png',
                                              width: 150,
                                              height: 50,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFFED1B6F),
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 15),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30, 0, 30, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.circle,
                                              color: Color(0xFF224799),
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 90, 5),
                                            child: Image.asset(
                                              'assets/images/9hsjc_2.png',
                                              width: 150,
                                              height: 53,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFFED1B6F),
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0xFFF5F5F5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30, 0, 30, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons.circle,
                                              color: Color(0xFF224799),
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 90, 5),
                                            child: Image.asset(
                                              'assets/images/mcatd_1.png',
                                              width: 150,
                                              height: 40,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Icon(
                                            Icons.info_outlined,
                                            color: Color(0xFFED1B6F),
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Continue to Payment ',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50,
                                  color: Color(0xFFED1B6F),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
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
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 10, 0),
                                    child: Text(
                                      'Name:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'inter sans serif',
                                            color: Color(0xFFED1B6F),
                                            fontSize: 20,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'name',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'inter sans serif',
                                          fontSize: 25,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 10, 0),
                                    child: Text(
                                      'Email',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'inter sans serif',
                                            color: Color(0xFFED1B6F),
                                            fontSize: 20,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'email',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'inter sans serif',
                                          fontSize: 25,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      'Total Payment:',
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'inter sans serif',
                                            color: Colors.black,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      'price',
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'inter sans serif',
                                            color: Color(0xFFED1B6F),
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Pay Now',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50,
                                  color: Color(0xFFED1B6F),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
