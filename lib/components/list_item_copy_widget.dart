import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemCopyWidget extends StatefulWidget {
  const ListItemCopyWidget({Key key}) : super(key: key);

  @override
  _ListItemCopyWidgetState createState() => _ListItemCopyWidgetState();
}

class _ListItemCopyWidgetState extends State<ListItemCopyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(11, 0, 11, 0),
      child: Material(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        child: Container(
          width: 249,
          height: 262,
          decoration: BoxDecoration(
            color: Color(0xFFFBFBFB),
            borderRadius: BorderRadius.circular(9),
            border: Border.all(
              color: Color(0xFFEEEEEE),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                alignment: AlignmentDirectional(0.95, 1),
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 20),
                    child: Container(
                      width: 237,
                      height: 179,
                      decoration: BoxDecoration(
                        color: Color(0x00EEEEEE),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/Hotel.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xFFF1F1F1),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/Save.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Arkadash Hotel',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Open Sans',
                            color: Color(0xFF171717),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '\$24',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF171717),
                                    fontSize: 14,
                                  ),
                            ),
                            Text(
                              '/ Night',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF171717),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0x8A000000),
                          size: 12,
                        ),
                        Text(
                          'Istanbul',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0x8A000000),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '\$4',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF171717),
                                    fontSize: 12,
                                  ),
                        ),
                        Text(
                          '/ Night',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF171717),
                                    fontSize: 12,
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
      ),
    );
  }
}
