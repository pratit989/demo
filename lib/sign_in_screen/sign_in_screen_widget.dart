import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreenWidget extends StatefulWidget {
  const SignInScreenWidget({Key key}) : super(key: key);

  @override
  _SignInScreenWidgetState createState() => _SignInScreenWidgetState();
}

class _SignInScreenWidgetState extends State<SignInScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF3F7F5),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Login.png',
              width: 428,
              height: 428,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: Container(
                width: 396,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      offset: Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/Vector.png',
                        width: 16,
                        height: 16,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Image.asset(
                        'assets/images/Rectangle_45.png',
                        width: 2,
                        height: 26,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Phone Number',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Work Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
              child: Container(
                width: 396,
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      offset: Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/Vector_(1).png',
                          width: 16,
                          height: 16,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Image.asset(
                          'assets/images/Rectangle_45.png',
                          width: 2,
                          height: 26,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Password',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 25, 10, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Sign In',
                options: FFButtonOptions(
                  width: 396,
                  height: 46,
                  color: Color(0xFF7161EF),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Work Sans',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 8,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Text(
                'Or continue with',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Spectral',
                      fontSize: 16,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                    child: Container(
                      width: 60,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            offset: Offset(2, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.asset(
                        'assets/images/logos_google-icon.png',
                        width: 32,
                        height: 32,
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          offset: Offset(2, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset(
                      'assets/images/Vector_(2).png',
                      width: 32,
                      height: 32,
                      fit: BoxFit.none,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                    child: Container(
                      width: 60,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 7,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            offset: Offset(2, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Image.asset(
                        'assets/images/logos_facebook.png',
                        width: 32,
                        height: 32,
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Not a member?',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Work Sans',
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'Sign Up',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Work Sans',
                              color: Color(0xFFFC60A8),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Continue to home?',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Work Sans',
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        'Skip',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFFFC60A8),
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
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
    );
  }
}
