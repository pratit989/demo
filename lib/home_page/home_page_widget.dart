import '../components/list_item_widget.dart';
import '../custom_code/custom_icon_button.dart';
import '../custom_code/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = 0;
    pageViewController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE5E5E5),
      body: Padding(
        padding: const EdgeInsets.only(bottom: kToolbarHeight),
        child: GestureDetector(
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
                            'assets/images/Rectangle_54.png',
                          ).image,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                            padding: EdgeInsetsDirectional.fromSTEB(0, 23, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.location_on_outlined,
                                        color: CustomTheme.of(context)
                                            .primaryBtnText,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    Text(
                                      'Turkey / Istanbul',
                                      style: CustomTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: CustomTheme.of(context)
                                                .primaryBackground,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Change',
                                  style: CustomTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Color(0x98FFFFFF),
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 220, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Container(
                              width: double.infinity,
                              height: 500,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 50),
                                    child: PageView.builder(
                                      controller: pageViewController ??=
                                          PageController(initialPage: 0),
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index) {
                                        setState(() {
                                          _currentIndex = index;
                                        });
                                      },
                                      itemBuilder: (context, pageIndex) {
                                        var _scale = _currentIndex == pageIndex ? 1.0 : 0.9;
                                        return TweenAnimationBuilder(
                                            tween: Tween(begin: _scale, end: _scale),
                                            duration: const Duration(milliseconds: 350),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.asset(
                                                  'assets/images/Rectangle_61.png',
                                                  width: 325,
                                                  height: 232,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            builder: (context, double value, child) {
                                              return Transform.scale(
                                                scale: value,
                                                child: child,
                                              );
                                            });
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0.8),
                                    child: SmoothPageIndicator(
                                      controller: pageViewController ??=
                                          PageController(initialPage: 0),
                                      count: 6,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) {
                                        pageViewController.animateToPage(
                                          i,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: SlideEffect(
                                        spacing: 5,
                                        radius: 16,
                                        dotWidth: 8,
                                        dotHeight: 8,
                                        dotColor: Color(0xFFFFFFFF),
                                        activeDotColor: Color(0xFF656565),
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'This user\n has rated',
                            style: CustomTheme.of(context).bodyText1.override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0x56000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.check_circle_outline_outlined,
                            color: Color(0x57000000),
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 19, 0),
                      child: Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Ellipse_43.png',
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Dave /',
                              style:
                                  CustomTheme.of(context).bodyText1.override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 16,
                                      ),
                            ),
                            Text(
                              '26 yo',
                              style:
                                  CustomTheme.of(context).bodyText1.override(
                                        fontFamily: 'Open Sans',
                                        color: Color(0x86000000),
                                        fontSize: 13,
                                      ),
                            ),
                          ],
                        ),
                        Text(
                          'Hotel Hilton',
                          style: CustomTheme.of(context).bodyText1.override(
                                fontFamily: 'Open Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          'Wednesday, April 6, 2022',
                          style: CustomTheme.of(context).bodyText1.override(
                                fontFamily: 'Open Sans',
                                color: Color(0xC3000000),
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Icon(
                              Icons.add,
                              color: CustomTheme.of(context).secondaryText,
                              size: 16,
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: Text(
                              'Know More',
                              style: CustomTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Container(
                          width: 164,
                          height: 44.21,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF5D5D5D), Color(0xFF8B8B8B)],
                              stops: [0.531, 0.7876],
                              begin: AlignmentDirectional(1, 0),
                              end: AlignmentDirectional(-1, 0),
                            ),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Color(0xFFE3E3E3),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Icon(
                                  Icons.thumb_up_outlined,
                                  color: CustomTheme.of(context)
                                      .primaryBackground,
                                  size: 20,
                                ),
                              ),
                              Text(
                                'Approve',
                                style: CustomTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: CustomTheme.of(context)
                                          .primaryBackground,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Container(
                          width: 164,
                          height: 44.21,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFEFEFEF), Color(0xFFE0E0E0)],
                              stops: [0.531, 0.7876],
                              begin: AlignmentDirectional(1, 0),
                              end: AlignmentDirectional(-1, 0),
                            ),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Color(0xFFE3E3E3),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Icon(
                                  Icons.thumb_down_outlined,
                                  color: Color(0xFF292D32),
                                  size: 20,
                                ),
                              ),
                              Text(
                                'Skip it',
                                style: CustomTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                  child: Text(
                    'Other Hotels\nRented By',
                    style: CustomTheme.of(context).bodyText1.override(
                          fontFamily: 'Open Sans',
                          fontSize: 29,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 20),
                  child: Text(
                    'Dave',
                    style: CustomTheme.of(context).bodyText1.override(
                          fontFamily: 'Open Sans',
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: BoxDecoration(
                    color: Color(0xFFE5E5E5),
                  ),
                  child: DefaultTabController(
                    length: 4,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.black,
                          labelStyle:
                              CustomTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                          indicatorColor: Color(0xFF969696),
                          indicatorWeight: 1,
                          tabs: [
                            Tab(
                              text: 'Turkey',
                            ),
                            Tab(
                              text: 'Norway',
                            ),
                            Tab(
                              text: 'USA',
                            ),
                            Tab(
                              text: 'Egypt',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color(0x0E000000),
                                        offset: Offset(0, 4),
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    alignment: AlignmentDirectional(1, 0),
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18, 0, 0, 0),
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            ListItemWidget(),
                                            ListItemWidget(),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height:
                                            MediaQuery.of(context).size.height *
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
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color(0x0E000000),
                                        offset: Offset(0, 4),
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    alignment: AlignmentDirectional(1, 0),
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18, 0, 0, 0),
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            ListItemWidget(),
                                            ListItemWidget(),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height:
                                        MediaQuery.of(context).size.height *
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
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color(0x0E000000),
                                        offset: Offset(0, 4),
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    alignment: AlignmentDirectional(1, 0),
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18, 0, 0, 0),
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            ListItemWidget(),
                                            ListItemWidget(),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height:
                                        MediaQuery.of(context).size.height *
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
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Color(0x0E000000),
                                        offset: Offset(0, 4),
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    alignment: AlignmentDirectional(1, 0),
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18, 0, 0, 0),
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            ListItemWidget(),
                                            ListItemWidget(),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        height:
                                        MediaQuery.of(context).size.height *
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
      ),
    );
  }
}
