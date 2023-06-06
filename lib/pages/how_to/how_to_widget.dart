import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'how_to_model.dart';
export 'how_to_model.dart';

class HowToWidget extends StatefulWidget {
  const HowToWidget({Key? key}) : super(key: key);

  @override
  _HowToWidgetState createState() => _HowToWidgetState();
}

class _HowToWidgetState extends State<HowToWidget> {
  late HowToModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HowToModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.12),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryText,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
              ),
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Text(
                  '공부방법 및 앱 사용방법',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              actions: [],
              centerTitle: true,
              toolbarHeight: MediaQuery.of(context).size.height * 0.12,
              elevation: 2.0,
            ),
          ),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.88,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 0.0, 0.0),
                              child: Text(
                                '개념을 확실히 이해하세요',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 8.0),
                              child: Text(
                                '공정제어 과목은 화학공학 전공자라고 하더라도 방대한 양때문에 공부에 어려움을 종종 겪는 과목입니다. \n\n최근 산업인력공단에서 공정제어를 포함한 대부분 과목에서 신유형 문제들을 많이 출제하고 있기에, 이전처럼 \"기출만 반복해서 합격하는 전략\"은 더 이상 통하지 않게 되었습니다.\n\n개념 1회독만이라도 하고 기출을 푸세요. 그렇지 않으면 운좋게 필기를 합격하더라도 머리에 남는 것이 없을 수 있고, 실기에서도 지장이 생길 수 있습니다. 이 앱에 있는 개념만이라도 확실하게 숙지하세요. (장담컨데 충분합니다)\n\n본 애플리케이션은, 1주일의 기간동안 공정제어의 개념들을 모두 학습하실 수 있게 구성되어 있습니다. 또한, 비전공자분들도 모두 이해하실 수 있도록 기본개념부터 차근차근 설명되어 있으니, 다른 강의나 개념서 없이 이 앱만으로 개념공부가 충분하실 것이라 자신드릴 수 있습니다.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 13.0,
                                    ),
                              ),
                            ),
                            Divider(
                              thickness: 2.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ],
                        ),
                        Expanded(
                          child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment(0.0, 0),
                                  child: TabBar(
                                    labelColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                    indicatorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    tabs: [
                                      Tab(
                                        text: '공부방법',
                                      ),
                                      Tab(
                                        text: '사용방법',
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FutureBuilder<List<YoutubeLinkRow>>(
                                            future: YoutubeLinkTable()
                                                .querySingleRow(
                                              queryFn: (q) => q.eq(
                                                'title',
                                                1,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<YoutubeLinkRow>
                                                  youtubePlayerYoutubeLinkRowList =
                                                  snapshot.data!;
                                              final youtubePlayerYoutubeLinkRow =
                                                  youtubePlayerYoutubeLinkRowList
                                                          .isNotEmpty
                                                      ? youtubePlayerYoutubeLinkRowList
                                                          .first
                                                      : null;
                                              return FlutterFlowYoutubePlayer(
                                                url:
                                                    youtubePlayerYoutubeLinkRow!
                                                        .link!,
                                                autoPlay: false,
                                                looping: true,
                                                mute: false,
                                                showControls: true,
                                                showFullScreen: true,
                                              );
                                            },
                                          ),
                                          Text(
                                            '\n\n\n\n',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FutureBuilder<List<YoutubeLinkRow>>(
                                            future: YoutubeLinkTable()
                                                .querySingleRow(
                                              queryFn: (q) => q.eq(
                                                'title',
                                                2,
                                              ),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<YoutubeLinkRow>
                                                  youtubePlayerYoutubeLinkRowList =
                                                  snapshot.data!;
                                              final youtubePlayerYoutubeLinkRow =
                                                  youtubePlayerYoutubeLinkRowList
                                                          .isNotEmpty
                                                      ? youtubePlayerYoutubeLinkRowList
                                                          .first
                                                      : null;
                                              return FlutterFlowYoutubePlayer(
                                                url:
                                                    youtubePlayerYoutubeLinkRow!
                                                        .link!,
                                                autoPlay: false,
                                                looping: true,
                                                mute: false,
                                                showControls: true,
                                                showFullScreen: true,
                                              );
                                            },
                                          ),
                                          Text(
                                            '\n\n\n\n',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
