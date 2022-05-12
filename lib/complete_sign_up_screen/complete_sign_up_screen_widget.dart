import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteSignUpScreenWidget extends StatefulWidget {
  const CompleteSignUpScreenWidget({Key key}) : super(key: key);

  @override
  _CompleteSignUpScreenWidgetState createState() =>
      _CompleteSignUpScreenWidgetState();
}

class _CompleteSignUpScreenWidgetState
    extends State<CompleteSignUpScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/CS.png',
              width: 428,
              height: 520,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
              child: Container(
                width: 396,
                height: 46,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      offset: Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/Vector_(1).png',
                        width: 14.4,
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
                      'Birthdate(dd MMM YYYY)',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Work Sans',
                            color: Color(0xFF3F403F),
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
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      offset: Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Image.asset(
                        'assets/images/Eye_Logo.png',
                        width: 16,
                        height: 12.8,
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
                            color: Color(0xFF3F403F),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Setup',
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
                  ),
                  borderRadius: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
