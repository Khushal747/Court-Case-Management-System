import 'package:url_launcher/url_launcher.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'lawyer_hmp.dart';

class LawyersdetailWidget extends StatefulWidget {
  const LawyersdetailWidget({Key? key}) : super(key: key);

  @override
  _LawyersdetailWidgetState createState() => _LawyersdetailWidgetState();
}

class _LawyersdetailWidgetState extends State<LawyersdetailWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      body: SingleChildScrollView (
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 240,
                    child: Stack(
                      alignment: AlignmentDirectional(-0.95, -0.7),
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.95, -0.55),
                          child: InkWell(
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFF5F5F5),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 10),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Color(0xFF4B39EF),
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/men.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lawyer name',
                        style: TextStyle(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Hardik Sharma',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF090F13),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          ' Office Address',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          '512,Vijay Nagar',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF090F13),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'City',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            'Indore',
                            textAlign: TextAlign.start,
                            style:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF090F13),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rating',
                          style:TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                '6',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF090F13),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Icon(
                                Icons.star_rate_rounded,
                                color: Color(0xFF4B39EF),
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Court Type',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            'High Court',
                            textAlign: TextAlign.start,
                            style:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF090F13),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact No.',
                          style:TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF95A1AC),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                          child: Text(
                            '9340953578',
                            textAlign: TextAlign.start,
                            style:
                            TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF090F13),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            // Container(
            //   width: 20,
            //   height: 20,
            //   decoration: BoxDecoration(
            //     color: Theme.of(context).backgroundColor,
            //   ),
            // ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),

                  child: Container(
                    child:ElevatedButton(
                      // textAlign: TextAlign.center,
                      onPressed: () => launch("tel://9340953578"),
                      child: Icon( //<-- SEE HERE
                        Icons.phone,
                        color: Colors.white,
                        size: 28,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), //<-- SEE HERE
                        padding: EdgeInsets.all(15),
                      ),
                    ),



                  ),


                  // child: Container(
                  //   width: 50,
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     color: Theme.of(context).backgroundColor,
                  //   ),
                  //   child: Padding(
                  //     padding: EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                  //     child:
                  //
                  //
                  //     // child: IconButton(
                  //     //   // borderColor: Colors.transparent,
                  //     //   // borderRadius: 30,
                  //     //   // borderWidth: 1,
                  //     //   // buttonSize: 60,
                  //     //   icon: Icon(
                  //     //     Icons.phone,
                  //     //     color: Theme.of(context).primaryColor,
                  //     //     size: 30,
                  //     //   ),
                  //     //   onPressed: () {
                  //     //     print('IconButton pressed ...');
                  //     //   },
                  //     // ),
                  //   ),
                  // ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(160, 0, 0, 0),
                  // child: Container(
                  //   width: 50,
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     color: Colors.red,
                  //     //Theme.of(context).backgroundColor,
                  //   ),

                    child:Container(

                      child:ElevatedButton(
                        onPressed: () => launch("sms:9340953578?body= "),
                        child: Icon( //<-- SEE HERE
                          Icons.chat_bubble_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), //<-- SEE HERE
                          padding: EdgeInsets.all(15),
                        ),
                      ),



                    ),

               //   ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Text(
                'Lawyer\'s document',
                style: TextStyle(),
              ),
            ),
            //button
        Container(
            margin: EdgeInsets.only(top: 24),
        height: 40,
        width: 130,
        child: ElevatedButton(
          onPressed: (){},
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ))),
          // onPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => ClientsHomepageWidget()),
          //   );
          // },
          child: Text(
            'Upload',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
        ),
    ),
            // FFButtonWidget(
            //   onPressed: () async {},
            //   text: 'Button',
            //   options: FFButtonOptions(
            //     width: 130,
            //     height: 40,
            //     color: Theme.of(context).primaryColor,
            //     textStyle: Theme.of(context).subtitle2.override(
            //       fontFamily: 'Poppins',
            //       color: Colors.white,
            //     ),

                // borderSide: BorderSide(
                //   color: Colors.transparent,
                //   width: 1,
                // ),
                // borderRadius: BorderRadius.circular(8),
              // ),
            // ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  //   child: Container(
                  //     width: 190,
                  //     height: 50,
                  //     decoration: BoxDecoration(
                  //       color: Theme.of(context).backgroundColor,
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     child: Container(
                  //       width: 100,
                  //       height: 100,
                  //       decoration: BoxDecoration(
                  //         color: Theme.of(context).backgroundColor,
                  //       ),

                        // child: Padding(
                        //   padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        //   child: FFButtonWidget(
                        //     onPressed: () {
                        //       print('Button pressed ...');
                        //     },
                        //     text: 'Send Request',
                        //     options: FFButtonOptions(
                        //       height: 40,
                        //       color: Theme.of(context).primaryColor,
                        //       textStyle:
                        //       Theme.of(context).subtitle2.override(
                        //         fontFamily: 'Poppins',
                        //         color: Colors.white,
                        //       ),
                        //       borderSide: BorderSide(
                        //         color: Colors.transparent,
                        //         width: 1,
                        //       ),
                        //       borderRadius: BorderRadius.circular(8),
                        //     ),
                        //   ),
                        // ),
                  //
    //button

             Container (
              margin: EdgeInsets.only(top: 24),
              height: 50,
              width: 230,
              child: ElevatedButton(
                onPressed: (){},

                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<
                        RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ClientsHomepageWidget()),
                //   );
                // },
                child: Text(

                  'Send Request',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF4B39EF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ),
            )
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  //   child: Container(
                  //     width: 190,
                  //     height: 50,
                  //     decoration: BoxDecoration(
                  //       color: Theme.of(context).backgroundColor,
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     child: Padding(
                  //       padding: EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                  //       child: FFButtonWidget(
                  //         onPressed: () {
                  //           print('Button pressed ...');
                  //         },
                  //         text: 'Cancel Request',
                  //         options: FFButtonOptions(
                  //           width: 130,
                  //           height: 40,
                  //           color: Theme.of(context).primaryColor,
                  //           textStyle:
                  //           Theme.of(context).subtitle2.override(
                  //             fontFamily: 'Poppins',
                  //             color: Colors.white,
                  //           ),
                  //           borderSide: BorderSide(
                  //             color: Colors.transparent,
                  //             width: 1,
                  //           ),
                  //           borderRadius: BorderRadius.circular(8),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  //button

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
