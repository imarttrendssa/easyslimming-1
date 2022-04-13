import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class CheckoutWidget extends StatefulWidget {
  const CheckoutWidget({Key key}) : super(key: key);

  @override
  _CheckoutWidgetState createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<CheckoutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  WebViewPlusController _controller;
  double _height = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E5E5),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'HomePage'),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/easyslim.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: StreamBuilder<List<CartRecord>>(
                  stream: queryCartRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<CartRecord> badgeCartRecordList = snapshot.data;
                    return Badge(
                      badgeContent: Text(
                        functions
                            .addQuantities(badgeCartRecordList.toList())
                            .toString(),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'inter sans serif',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
                      ),
                      showBadge: true,
                      shape: BadgeShape.circle,
                      badgeColor: Color(0xFFED1B6F),
                      elevation: 4,
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      position: BadgePosition.topEnd(),
                      animationType: BadgeAnimationType.scale,
                      toAnimate: true,
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'cart'),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Color(0xFFED1B6F),
                          size: 30,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            children: [
              Text(
                "Height of WebviewPlus: $_height",
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'inter sans serif',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
              ),
              SizedBox(
                height: _height,
                child: WebViewPlus(
                  javascriptChannels: null,
                  initialUrl: 'assets/button.html',
                  onWebViewCreated: (controller) {
                    _controller = controller;
                  },
                  onPageFinished: (url) {
                    _controller?.getHeight().then((double height) {
                      debugPrint("Height: " + height.toString());
                      setState(() {
                        _height = height;
                      });
                    });
                  },
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
