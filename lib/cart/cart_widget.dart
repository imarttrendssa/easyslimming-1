import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key key}) : super(key: key);

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int countControllerValue;

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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                child: Badge(
                  badgeContent: Text(
                    '1',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'inter sans serif',
                          color: Colors.white,
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
                              NavBarPage(initialPage: 'wishlist'),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xFFED1B6F),
                      size: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                child: Badge(
                  badgeContent: Text(
                    '1',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'inter sans serif',
                          color: Colors.white,
                          useGoogleFonts: false,
                        ),
                  ),
                  showBadge: true,
                  shape: BadgeShape.circle,
                  badgeColor: Color(0xFFED1B6F),
                  elevation: 4,
                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                  position: BadgePosition.topEnd(),
                  animationType: BadgeAnimationType.scale,
                  toAnimate: true,
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBarPage(initialPage: 'cart'),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Color(0xFFED1B6F),
                      size: 30,
                    ),
                  ),
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 250, 10),
                  child: Text(
                    'My Cart',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'inter sans serif',
                          color: Colors.black,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<CartRecord> listViewCartRecordList = snapshot.data;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewCartRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewCartRecord =
                                listViewCartRecordList[listViewIndex];
                            return Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.network(
                                    listViewCartRecord.image,
                                    width: 130,
                                    height: 160,
                                    fit: BoxFit.fill,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 2, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 2, 0),
                                          child: Text(
                                            listViewCartRecord.itemName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'inter sans serif',
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 2, 0),
                                          child: Text(
                                            listViewCartRecord.productID,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'inter sans serif',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: Text(
                                            listViewCartRecord.price.toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'inter sans serif',
                                                  color: Color(0xFFED1B6F),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 20),
                                        child: Container(
                                          width: 80,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Color(0xFFED1B6F),
                                              width: 2,
                                            ),
                                          ),
                                          child: FlutterFlowCountController(
                                            decrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.minus,
                                              color: enabled
                                                  ? Color(0xFFED1B6F)
                                                  : Color(0xFFEEEEEE),
                                              size: 12,
                                            ),
                                            incrementIconBuilder: (enabled) =>
                                                FaIcon(
                                              FontAwesomeIcons.plus,
                                              color: enabled
                                                  ? Color(0xFFED1B6F)
                                                  : Color(0xFFEEEEEE),
                                              size: 15,
                                            ),
                                            countBuilder: (count) => Text(
                                              count.toString(),
                                              style: TextStyle(
                                                fontFamily: 'inter sans serif',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                              ),
                                            ),
                                            count: countControllerValue ??= 1,
                                            updateCount: (count) => setState(
                                                () => countControllerValue =
                                                    count),
                                            stepSize: 1,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 10, 0),
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color(0xFFED1B6F),
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Amount',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'inter sans serif',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              'R ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'inter sans serif',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Pay Now',
                          options: FFButtonOptions(
                            width: 335,
                            height: 40,
                            color: Color(0xFFED1B6F),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 8,
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
      ),
    );
  }
}
