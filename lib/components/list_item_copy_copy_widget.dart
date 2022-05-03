import '../custom_code/custom_theme.dart';
import 'package:flutter/material.dart';

class ListItemCopyCopyWidget extends StatefulWidget {
  const ListItemCopyCopyWidget({Key key}) : super(key: key);

  @override
  _ListItemCopyCopyWidgetState createState() => _ListItemCopyCopyWidgetState();
}

class _ListItemCopyCopyWidgetState extends State<ListItemCopyCopyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(13, 0, 13, 0),
      child: Container(
        width: 248,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Material(
              color: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              child: Container(
                width: 248,
                height: 264,
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 8),
                      child: Container(
                        width: 237,
                        height: 247,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.asset(
                              'assets/images/Newyork.png',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xFFF1F1F1),
                            width: 1,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(1, -0.93),
                          child: Container(
                            width: 48,
                            height: 48,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/Save_(1).png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 5, 5, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New York',
                    style: CustomTheme.of(context).bodyText1.override(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.map_outlined,
                        color: Color(0x7F292D32),
                        size: 20,
                      ),
                      Text(
                        'Show on Map',
                        style: CustomTheme.of(context).bodyText1.override(
                          fontFamily: 'Open Sans',
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
    );
  }
}