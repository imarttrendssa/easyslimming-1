import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../product_details/product_details_widget.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ListAllProductsWidget extends StatefulWidget {
  const ListAllProductsWidget({Key key}) : super(key: key);

  @override
  _ListAllProductsWidgetState createState() => _ListAllProductsWidgetState();
}

class _ListAllProductsWidgetState extends State<ListAllProductsWidget> {
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 210, 0),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'HomePage'),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/cropped-104336826_140397510962671_14613263856390329-1-32x32-2-large.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Icon(
              Icons.search_outlined,
              color: Color(0xFFED1B6F),
              size: 24,
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
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'products'),
                              ),
                            );
                          },
                          child: Text(
                            'see less',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'inter sans serif',
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                    child: StreamBuilder<List<ProductsRecord>>(
                      stream: queryProductsRecord(),
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
                        List<ProductsRecord> listViewProductsRecordList =
                            snapshot.data;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewProductsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewProductsRecord =
                                listViewProductsRecordList[listViewIndex];
                            return Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ProductDetailsWidget(
                                            productDetails:
                                                listViewProductsRecord
                                                    .reference,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        listViewProductsRecord.image,
                                        'image',
                                      ),
                                      width: 130,
                                      height: 160,
                                      fit: BoxFit.fill,
                                    ),
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
                                            valueOrDefault<String>(
                                              listViewProductsRecord
                                                  .productName,
                                              'product name',
                                            ),
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
                                                  0, 20, 0, 0),
                                          child: Text(
                                            'R ${listViewProductsRecord.price.toString()}',
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
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 40, 10, 0),
                                      child: Icon(
                                        Icons.favorite_sharp,
                                        color: Color(0xFFED1B6F),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 40, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          final cartCreateData =
                                              createCartRecordData(
                                            image: listViewProductsRecord.image,
                                            itemName: listViewProductsRecord
                                                .productName,
                                            price: listViewProductsRecord.price,
                                            prtQuantity:
                                                listViewProductsRecord.quantity,
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
                            );
                          },
                        );
                      },
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
