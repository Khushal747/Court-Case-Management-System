import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'lawyer_hmp.dart';
import 'lawyers_detail.dart';

class ClientsHomepageWidget extends StatefulWidget {
  const ClientsHomepageWidget({Key? key}) : super(key: key);

  @override
  _ClientsHomepageWidgetState createState() => _ClientsHomepageWidgetState();
}

class _ClientsHomepageWidgetState extends State<ClientsHomepageWidget> {
  double? ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Home page',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Hii Hardik!!',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>LawyersdetailWidget ()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 8),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x411D2429),
                              offset: Offset(0, 1),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Image.asset(
                                    'assets/men.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mohit singh',
                                        style: TextStyle(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF0F1113),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'High court',
                                        style: TextStyle(),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 8, 0),
                                        child: AutoSizeText(
                                          'Indore',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Icon(

                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF57636C),
                                      size: 24,

                                    ),
                                  ),
                                  RatingBar.builder(
                                    onRatingUpdate: (newValue) =>
                                        setState(() => ratingBarValue = newValue),
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star_rounded,
                                      color: Color.fromRGBO(57, 210, 192, 1),
                                    ),
                                    direction: Axis.horizontal,
                                    initialRating: ratingBarValue ??= 3,
                                    unratedColor: Color(0xFF9E9E9E),
                                    itemCount: 5,
                                    itemSize: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 4, 8),
                                    child: Text(
                                      'Rating',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
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
                  ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 8),
                  //   child: Container(
                  //     width: double.infinity,
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           blurRadius: 3,
                  //           color: Color(0x411D2429),
                  //           offset: Offset(0, 1),
                  //         )
                  //       ],
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     child: Padding(
                  //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  //       child: Row(
                  //         mainAxisSize: MainAxisSize.max,
                  //         children: [
                  //           Padding(
                  //             padding:
                  //                 EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(6),
                  //               child: Image.asset(
                  //                 'assets/men.png',
                  //                 width: 80,
                  //                 height: 80,
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //           ),
                  //           Expanded(
                  //             child: Padding(
                  //               padding:
                  //                   EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                  //               child: Column(
                  //                 mainAxisSize: MainAxisSize.max,
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Text(
                  //                     'Ramesh yadav',
                  //                     style: TextStyle(
                  //                       fontFamily: 'Outfit',
                  //                       color: Color(0xFF0F1113),
                  //                       fontSize: 20,
                  //                       fontWeight: FontWeight.w500,
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     'High court',
                  //                     style: TextStyle(),
                  //                   ),
                  //                   Padding(
                  //                     padding: EdgeInsetsDirectional.fromSTEB(
                  //                         0, 4, 8, 0),
                  //                     child: AutoSizeText(
                  //                       'indore',
                  //                       textAlign: TextAlign.start,
                  //                       style: TextStyle(
                  //                         fontFamily: 'Outfit',
                  //                         color: Color(0xFF57636C),
                  //                         fontSize: 14,
                  //                         fontWeight: FontWeight.normal,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //           Column(
                  //             mainAxisSize: MainAxisSize.max,
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             crossAxisAlignment: CrossAxisAlignment.end,
                  //             children: [
                  //               Padding(
                  //                 padding: EdgeInsetsDirectional.fromSTEB(
                  //                     0, 4, 0, 0),
                  //                 child: Icon(
                  //                   Icons.chevron_right_rounded,
                  //                   color: Color(0xFF57636C),
                  //                   size: 24,
                  //                 ),
                  //               ),
                  //               RatingBar.builder(
                  //                 onRatingUpdate: (newValue) =>
                  //                     setState(() => ratingBarValue = newValue),
                  //                 itemBuilder: (context, index) => Icon(
                  //                   Icons.star_rounded,
                  //                   color: Color.fromRGBO(57, 210, 192, 1),
                  //                 ),
                  //                 direction: Axis.horizontal,
                  //                 initialRating: ratingBarValue ??= 3,
                  //                 unratedColor: Color(0xFF9E9E9E),
                  //                 itemCount: 5,
                  //                 itemSize: 20,
                  //               ),
                  //               Padding(
                  //                 padding: EdgeInsetsDirectional.fromSTEB(
                  //                     0, 0, 4, 8),
                  //                 child: Text(
                  //                   'Rating',
                  //                   textAlign: TextAlign.end,
                  //                   style: TextStyle(
                  //                     fontFamily: 'Outfit',
                  //                     color: Color(0xFF0F1113),
                  //                     fontSize: 14,
                  //                     fontWeight: FontWeight.normal,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 8),
                  //   child: Container(
                  //     width: double.infinity,
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           blurRadius: 3,
                  //           color: Color(0x411D2429),
                  //           offset: Offset(0, 1),
                  //         )
                  //       ],
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     child: Padding(
                  //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  //       child: Row(
                  //         mainAxisSize: MainAxisSize.max,
                  //         children: [
                  //           Padding(
                  //             padding:
                  //                 EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(6),
                  //               child: Image.asset(
                  //                 'assets/men.png',
                  //                 width: 80,
                  //                 height: 80,
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //           ),
                  //           Expanded(
                  //             child: Padding(
                  //               padding:
                  //                   EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                  //               child: Column(
                  //                 mainAxisSize: MainAxisSize.max,
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Text(
                  //                     'Arunima singh',
                  //                     style: TextStyle(
                  //                       fontFamily: 'Outfit',
                  //                       color: Color(0xFF0F1113),
                  //                       fontSize: 20,
                  //                       fontWeight: FontWeight.w500,
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     'High court',
                  //                     style: TextStyle(),
                  //                   ),
                  //                   Padding(
                  //                     padding: EdgeInsetsDirectional.fromSTEB(
                  //                         0, 4, 8, 0),
                  //                     child: AutoSizeText(
                  //                       'indore',
                  //                       textAlign: TextAlign.start,
                  //                       style: TextStyle(
                  //                         fontFamily: 'Outfit',
                  //                         color: Color(0xFF57636C),
                  //                         fontSize: 14,
                  //                         fontWeight: FontWeight.normal,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //           Column(
                  //             mainAxisSize: MainAxisSize.max,
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             crossAxisAlignment: CrossAxisAlignment.end,
                  //             children: [
                  //               Padding(
                  //                 padding: EdgeInsetsDirectional.fromSTEB(
                  //                     0, 4, 0, 0),
                  //                 child: Icon(
                  //                   Icons.chevron_right_rounded,
                  //                   color: Color(0xFF57636C),
                  //                   size: 24,
                  //                 ),
                  //               ),
                  //               RatingBar.builder(
                  //                 onRatingUpdate: (newValue) =>
                  //                     setState(() => ratingBarValue = newValue),
                  //                 itemBuilder: (context, index) => Icon(
                  //                   Icons.star_rounded,
                  //                   color: Color.fromRGBO(57, 210, 192, 1),
                  //                 ),
                  //                 direction: Axis.horizontal,
                  //                 initialRating: ratingBarValue ??= 3,
                  //                 unratedColor: Color(0xFF9E9E9E),
                  //                 itemCount: 5,
                  //                 itemSize: 20,
                  //               ),
                  //               Padding(
                  //                 padding: EdgeInsetsDirectional.fromSTEB(
                  //                     0, 0, 4, 8),
                  //                 child: Text(
                  //                   'Rating',
                  //                   textAlign: TextAlign.end,
                  //                   style: TextStyle(
                  //                     fontFamily: 'Outfit',
                  //                     color: Color(0xFF0F1113),
                  //                     fontSize: 14,
                  //                     fontWeight: FontWeight.normal,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 8),
                  //   child: Container(
                  //     width: double.infinity,
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       boxShadow: [
                  //         BoxShadow(
                  //           blurRadius: 3,
                  //           color: Color(0x411D2429),
                  //           offset: Offset(0, 1),
                  //         )
                  //       ],
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     child: Padding(
                  //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  //       child: Row(
                  //         mainAxisSize: MainAxisSize.max,
                  //         children: [
                  //           Padding(
                  //             padding:
                  //                 EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(6),
                  //               child: Image.asset(
                  //                 'assets/men.png',
                  //                 width: 80,
                  //                 height: 80,
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //           ),
                  //           Expanded(
                  //             child: Padding(
                  //               padding:
                  //                   EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                  //               child: Column(
                  //                 mainAxisSize: MainAxisSize.max,
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Text(
                  //                     'Shyam dhar',
                  //                     style: TextStyle(
                  //                       fontFamily: 'Outfit',
                  //                       color: Color(0xFF0F1113),
                  //                       fontSize: 20,
                  //                       fontWeight: FontWeight.w500,
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     'High court',
                  //                     style: TextStyle(),
                  //                   ),
                  //                   Padding(
                  //                     padding: EdgeInsetsDirectional.fromSTEB(
                  //                         0, 4, 8, 0),
                  //                     child: AutoSizeText(
                  //                       'indore',
                  //                       textAlign: TextAlign.start,
                  //                       style: TextStyle(
                  //                         fontFamily: 'Outfit',
                  //                         color: Color(0xFF57636C),
                  //                         fontSize: 14,
                  //                         fontWeight: FontWeight.normal,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //           Column(
                  //             mainAxisSize: MainAxisSize.max,
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             crossAxisAlignment: CrossAxisAlignment.end,
                  //             children: [
                  //               Padding(
                  //                 padding: EdgeInsetsDirectional.fromSTEB(
                  //                     0, 4, 0, 0),
                  //                 child: Icon(
                  //                   Icons.chevron_right_rounded,
                  //                   color: Color(0xFF57636C),
                  //                   size: 24,
                  //                 ),
                  //               ),
                  //               RatingBar.builder(
                  //                 onRatingUpdate: (newValue) =>
                  //                     setState(() => ratingBarValue = newValue),
                  //                 itemBuilder: (context, index) => Icon(
                  //                   Icons.star_rounded,
                  //                   color: Color.fromRGBO(57, 210, 192, 1),
                  //                 ),
                  //                 direction: Axis.horizontal,
                  //                 initialRating: ratingBarValue ??= 3,
                  //                 unratedColor: Color(0xFF9E9E9E),
                  //                 itemCount: 5,
                  //                 itemSize: 20,
                  //               ),
                  //               Padding(
                  //                 padding: EdgeInsetsDirectional.fromSTEB(
                  //                     0, 0, 4, 8),
                  //                 child: Text(
                  //                   'Rating',
                  //                   textAlign: TextAlign.end,
                  //                   style: TextStyle(
                  //                     fontFamily: 'Outfit',
                  //                     color: Color(0xFF0F1113),
                  //                     fontSize: 14,
                  //                     fontWeight: FontWeight.normal,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x411D2429),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x411D2429),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x411D2429),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x411D2429),
                            offset: Offset(0, 1),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
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
