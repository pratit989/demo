import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGalleryScreenOptionsWidget extends StatefulWidget {
  const UserGalleryScreenOptionsWidget({Key key}) : super(key: key);

  @override
  _UserGalleryScreenOptionsWidgetState createState() =>
      _UserGalleryScreenOptionsWidgetState();
}

class _UserGalleryScreenOptionsWidgetState
    extends State<UserGalleryScreenOptionsWidget> {
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
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Image.asset(
                          'assets/images/Pic.png',
                          width: 375,
                          height: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 18,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                            Text(
                              'Ariana',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Baloo Chettan 2',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 20,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(250, 82, 0, 0),
                        child: Container(
                          width: 100,
                          height: 67,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Report',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Work Sans',
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Image.asset(
                                'assets/images/Rectangle_58.png',
                                width: 76,
                                height: 1,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Share',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Work Sans',
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: 1,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Image.asset(
                        'assets/images/Rectangle_67.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_68.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_69.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_70.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_71.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_72.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_73.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_74.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/Rectangle_75.png',
                        width: 142,
                        height: 142,
                        fit: BoxFit.cover,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle_76.png',
                            width: 142,
                            height: 142,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(97, 97, 0, 0),
                            child: Icon(
                              Icons.play_arrow_rounded,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/Rectangle_77.png',
                            width: 142,
                            height: 142,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(97, 97, 0, 0),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(0x653F403F),
                                shape: BoxShape.circle,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        3, 3, 0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.circle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      size: 10,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 6, 0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.circle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      size: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
