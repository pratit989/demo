import '../components/list_item_copy_copy_widget.dart';
import '../components/list_item_copy_widget.dart';
import '../custom_code/custom_drop_down.dart';
import '../custom_code/custom_icon_button.dart';
import '../custom_code/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({Key key}) : super(key: key);

  @override
  _HomePageCopyWidgetState createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  String dropDownValue1;
  bool switchListTileValue;
  String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE5E5E5),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/Rectangle_53.png',
                        ).image,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomIconButton(
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
                                'Metoospace',
                                textAlign: TextAlign.center,
                                style: CustomTheme.of(context)
                                    .bodyText1
                                    .override(
                                  fontFamily: 'Open Sans',
                                  color: CustomTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.notifications_none,
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
                          padding:
                          EdgeInsetsDirectional.fromSTEB(20, 100, 0, 0),
                          child: Text(
                            'Find The Next\nAmazing Hotel to Rent',
                            style:
                            CustomTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 20),
                          child: Text(
                            'we provide best paces to renting for a night or even hours...',
                            style:
                            CustomTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                child: Text(
                                  'Discover More',
                                  style: CustomTheme.of(context)
                                      .bodyText1
                                      .override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 13,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                ),
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.black,
                        labelStyle:
                        CustomTheme.of(context).bodyText1.override(
                          fontFamily: 'Open Sans',
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                        indicatorColor: Color(0xFF969696),
                        indicatorWeight: 1,
                        tabs: [
                          Tab(
                            text: 'Hotel',
                            icon: FaIcon(
                              FontAwesomeIcons.hotel,
                              color: Color(0xFF292D32),
                            ),
                          ),
                          Tab(
                            text: 'Hostel',
                            icon: Icon(
                              Icons.apartment,
                            ),
                          ),
                          Tab(
                            text: 'Room',
                            icon: Icon(
                              Icons.house,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: SwitchListTile(
                                      value: switchListTileValue ??= false,
                                      onChanged: (newValue) => setState(
                                              () => switchListTileValue = newValue),
                                      title: Text(
                                        'Also, Show Me The Shared Units',
                                        style: CustomTheme.of(context)
                                            .title3
                                            .override(
                                          fontFamily: 'Open Sans',
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      activeColor: Color(0xFFE3E3E3),
                                      activeTrackColor: Color(0xFFE3E3E3),
                                      dense: false,
                                      controlAffinity:
                                      ListTileControlAffinity.trailing,
                                      contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 10),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Container(
                                      width: 340,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Color(0xFFDDDDDD),
                                          width: 1,
                                        ),
                                      ),
                                      child: CustomDropDown(
                                        options: ['Option 1'].toList(),
                                        onChanged: (val) => setState(
                                                () => dropDownValue1 = val),
                                        width: 340,
                                        height: 42,
                                        textStyle: CustomTheme.of(context)
                                            .bodyText1
                                            .override(
                                          fontFamily: 'Open Sans',
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        hintText: 'Choose Country / City',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Color(0xFF292D32),
                                          size: 20,
                                        ),
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Color(0xFFDDDDDD),
                                        borderWidth: 1,
                                        borderRadius: 4,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 340,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Color(0xFFDDDDDD),
                                        width: 1,
                                      ),
                                    ),
                                    child: CustomDropDown(
                                      options: ['Option 1'].toList(),
                                      onChanged: (val) =>
                                          setState(() => dropDownValue2 = val),
                                      width: 340,
                                      height: 42,
                                      textStyle: CustomTheme.of(context)
                                          .bodyText1
                                          .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText: 'You want Stay Hourly or Daily',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color(0xFF292D32),
                                        size: 20,
                                      ),
                                      fillColor: Colors.white,
                                      elevation: 2,
                                      borderColor: Color(0xFFDDDDDD),
                                      borderWidth: 1,
                                      borderRadius: 4,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 4),
                                      hidesUnderline: true,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Featured Listing',
                                          style: CustomTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          'View More',
                                          style: CustomTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 264,
                                    decoration: BoxDecoration(),
                                    child: Stack(
                                      alignment: AlignmentDirectional(1, 0),
                                      children: [
                                        ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            ListItemCopyWidget(),
                                            ListItemCopyWidget(),
                                          ],
                                        ),
                                        Container(
                                          width: 40,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height *
                                              11,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.white,
                                                Color(0x00FFFFFF)
                                              ],
                                              stops: [0, 1],
                                              begin: AlignmentDirectional(1, 0),
                                              end: AlignmentDirectional(-1, 0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
                                    child: Container(
                                      width: 340,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Color(0xFFDDDDDD),
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .clipboardList,
                                                    color: Colors.black,
                                                    size: 24,
                                                  ),
                                                ),
                                                Text(
                                                  'Open Hotels List',
                                                  style: CustomTheme.of(
                                                      context)
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Open Sans',
                                                    fontSize: 13,
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                                borderRadius:
                                                BorderRadius.circular(4),
                                                border: Border.all(
                                                  color: Color(0xFF292D32),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Align(
                                                alignment:
                                                AlignmentDirectional(0, 0),
                                                child: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: Colors.black,
                                                  size: 15,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(4),
                                            border: Border.all(
                                              color: Color(0xFFDDDDDD),
                                              width: 1,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 20, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 10, 0),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .calendarAlt,
                                                        color: Colors.black,
                                                        size: 24,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Open Hotels List',
                                                      style:
                                                      CustomTheme.of(
                                                          context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Open Sans',
                                                        fontSize: 13,
                                                        fontWeight:
                                                        FontWeight
                                                            .normal,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 165,
                                          height: 42,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(4),
                                            border: Border.all(
                                              color: Color(0xFFDDDDDD),
                                              width: 1,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 20, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 10, 0),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .calendar,
                                                        color: Colors.black,
                                                        size: 24,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Check-Out-Date',
                                                      style:
                                                      CustomTheme.of(
                                                          context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Open Sans',
                                                        fontSize: 13,
                                                        fontWeight:
                                                        FontWeight
                                                            .normal,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 0),
                                    child: Container(
                                      width: 340,
                                      height: 42,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFEFEFEF),
                                            Color(0x00E0E0E0)
                                          ],
                                          stops: [0.531, 0.7876],
                                          begin: AlignmentDirectional(1, 0.34),
                                          end: AlignmentDirectional(-1, -0.34),
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Color(0xFFE3E3E3),
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Reserve Hotel',
                                            style: CustomTheme.of(context)
                                                .bodyText1
                                                .override(
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Most Visited Cities',
                                          style: CustomTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          'View More',
                                          style: CustomTheme.of(context)
                                              .bodyText1
                                              .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 287,
                                    decoration: BoxDecoration(),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        ListItemCopyCopyWidget(),
                                        ListItemCopyCopyWidget(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Tab View 3',
                              style: CustomTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Open Sans',
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              'Tab View 4',
                              style: CustomTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Open Sans',
                                fontSize: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
