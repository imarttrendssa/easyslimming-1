import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../main.dart';
import '../product_details/product_details_widget.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key key,
    this.addToCart,
  }) : super(key: key);

  final DocumentReference addToCart;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 175, 0),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginWidget(),
                    ),
                  );
                },
                child: Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Color(0xFFED1B6F),
                  size: 24,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 10),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/slider-min.png',
                      ).image,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'A Nature\'s \ntouch',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'inter sans serif',
                                    color: Color(0xFFED1B6F),
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          '100%',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'inter sans serif',
                                    color: Color(0xFFED1B6F),
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NavBarPage(initialPage: 'products'),
                              ),
                            );
                          },
                          text: 'buy',
                          options: FFButtonOptions(
                            width: 50,
                            height: 20,
                            color: Color(0xFFED1B6F),
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'inter sans serif',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      useGoogleFonts: false,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                  child: StreamBuilder<List<ProductsRecord>>(
                    stream: queryProductsRecord(
                      queryBuilder: (productsRecord) =>
                          productsRecord.orderBy('price', descending: true),
                      limit: 2,
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
                      List<ProductsRecord> gridViewProductsRecordList =
                          snapshot.data;
                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          childAspectRatio: 1,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: gridViewProductsRecordList.length,
                        itemBuilder: (context, gridViewIndex) {
                          final gridViewProductsRecord =
                              gridViewProductsRecordList[gridViewIndex];
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 2, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailsWidget(
                                              productDetails:
                                                  gridViewProductsRecord
                                                      .reference,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          gridViewProductsRecord.image,
                                          'image',
                                        ),
                                        height: 130,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6, 0, 0, 0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            gridViewProductsRecord.productName,
                                            'Product Name',
                                          ),
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
                                            60, 0, 0, 0),
                                        child: Text(
                                          gridViewProductsRecord.productID,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'inter sans serif',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 15,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 30, 0),
                                        child: Text(
                                          'R ${valueOrDefault<String>(
                                            gridViewProductsRecord.price
                                                .toString(),
                                            'price',
                                          )}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'inter sans serif',
                                                color: Color(0xFFED1B6F),
                                                fontSize: 15,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          final wishlistCreateData =
                                              createWishlistRecordData(
                                            image: gridViewProductsRecord.image,
                                            itemName: gridViewProductsRecord
                                                .productName,
                                            price: gridViewProductsRecord.price,
                                          );
                                          await WishlistRecord.collection
                                              .doc()
                                              .set(wishlistCreateData);
                                        },
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color(0xFFED1B6F),
                                          size: 24,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          final cartCreateData =
                                              createCartRecordData(
                                            image: gridViewProductsRecord.image,
                                            itemName: gridViewProductsRecord
                                                .productName,
                                            price: gridViewProductsRecord.price,
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: Image.asset(
                        'assets/images/slider1-min_(2).png',
                      ).image,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'BE GORGEOUS',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'inter sans serif',
                                      color: Color(0xFFED1B6F),
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                        Text(
                          'LOOK GORGEOUS',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'inter sans serif',
                                    color: Color(0xFFED1B6F),
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          'INSIDE OUT',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'inter sans serif',
                                    color: Color(0xFFED1B6F),
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                  child: StreamBuilder<List<ProductsRecord>>(
                    stream: queryProductsRecord(
                      limit: 8,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailsWidget(
                                          productDetails:
                                              listViewProductsRecord.reference,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 2, 0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            listViewProductsRecord.productName,
                                            'product name',
                                          ),
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
                                          'R ${listViewProductsRecord.price.toString()}',
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
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 40, 10, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        final wishlistCreateData =
                                            createWishlistRecordData(
                                          image: listViewProductsRecord.image,
                                          itemName: listViewProductsRecord
                                              .productName,
                                          price: listViewProductsRecord.price,
                                        );
                                        await WishlistRecord.collection
                                            .doc()
                                            .set(wishlistCreateData);
                                      },
                                      child: Icon(
                                        Icons.favorite_sharp,
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
                                        0, 40, 10, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        final cartCreateData =
                                            createCartRecordData(
                                          image: listViewProductsRecord.image,
                                          itemName: listViewProductsRecord
                                              .productName,
                                          price: listViewProductsRecord.price,
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
    );
  }
}
