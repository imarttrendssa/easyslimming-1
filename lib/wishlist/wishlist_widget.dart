import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistWidget extends StatefulWidget {
  const WishlistWidget({Key key}) : super(key: key);

  @override
  _WishlistWidgetState createState() => _WishlistWidgetState();
}

class _WishlistWidgetState extends State<WishlistWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              child: StreamBuilder<List<ProductsRecord>>(
                stream: queryProductsRecord(
                  singleRecord: true,
                ),
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
                  List<ProductsRecord> badgeProductsRecordList = snapshot.data;
                  // Return an empty Container when the document does not exist.
                  if (snapshot.data.isEmpty) {
                    return Container();
                  }
                  final badgeProductsRecord = badgeProductsRecordList.isNotEmpty
                      ? badgeProductsRecordList.first
                      : null;
                  return Badge(
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
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 250, 10),
            child: Text(
              'My WishList',
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'inter sans serif',
                    color: Colors.black,
                    fontSize: 22,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
              child: StreamBuilder<List<WishlistRecord>>(
                stream: queryWishlistRecord(),
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
                  List<WishlistRecord> listViewWishlistRecordList =
                      snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewWishlistRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewWishlistRecord =
                          listViewWishlistRecordList[listViewIndex];
                      return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network(
                              listViewWishlistRecord.image,
                              width: 130,
                              height: 160,
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 2, 0),
                                    child: Text(
                                      listViewWishlistRecord.itemName,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'inter sans serif',
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Text(
                                      'R ${listViewWishlistRecord.price.toString()}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'inter sans serif',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 20),
                                    child: InkWell(
                                      onTap: () async {
                                        await listViewWishlistRecord.reference
                                            .delete();
                                      },
                                      child: Icon(
                                        Icons.delete_outline,
                                        color: Color(0xFFED1B6F),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        final cartCreateData =
                                            createCartRecordData(
                                          image: listViewWishlistRecord.image,
                                          itemName:
                                              listViewWishlistRecord.itemName,
                                          price: listViewWishlistRecord.price,
                                        );
                                        await CartRecord.collection
                                            .doc()
                                            .set(cartCreateData);
                                      },
                                      child: Icon(
                                        Icons.add_shopping_cart,
                                        color: Color(0xFFED1B6F),
                                        size: 24,
                                      ),
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
        ],
      ),
    );
  }
}
