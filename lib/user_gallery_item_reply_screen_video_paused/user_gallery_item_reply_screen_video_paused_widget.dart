import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGalleryItemReplyScreenVideoPausedWidget extends StatefulWidget {
  const UserGalleryItemReplyScreenVideoPausedWidget({Key key})
      : super(key: key);

  @override
  _UserGalleryItemReplyScreenVideoPausedWidgetState createState() =>
      _UserGalleryItemReplyScreenVideoPausedWidgetState();
}

class _UserGalleryItemReplyScreenVideoPausedWidgetState
    extends State<UserGalleryItemReplyScreenVideoPausedWidget> {
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Image.asset(
                      'assets/images/Vector_(1).png',
                      width: 12.5,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Ariana',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Baloo Chettan 2',
                          color: Color(0xFF3F403F),
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: Image.asset(
                      'assets/images/Vector_(2).png',
                      width: 5,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: Image.asset(
                'assets/images/Rectangle_79.png',
                width: 428,
                height: 1,
                fit: BoxFit.cover,
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/pexels-megan-ruth-11754055_1.png',
                      width: 340,
                      height: 440,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 413, 0, 0),
                  child: Icon(
                    Icons.volume_mute_outlined,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 417, 0, 0),
                  child: Icon(
                    Icons.clear_sharp,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(152, 204, 0, 0),
                  child: Icon(
                    Icons.play_arrow,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 300, 0, 0),
                  child: Container(
                    width: 24,
                    height: 18.46,
                    decoration: BoxDecoration(
                      color: Color(0x673F403F),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(150, 122, 0, 0),
                  child: Container(
                    width: 44,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(0x673F403F),
                      borderRadius: BorderRadius.circular(48),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
