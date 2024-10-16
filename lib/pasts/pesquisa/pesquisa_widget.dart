import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pesquisa_model.dart';
export 'pesquisa_model.dart';

class PesquisaWidget extends StatefulWidget {
  const PesquisaWidget({super.key});

  @override
  State<PesquisaWidget> createState() => _PesquisaWidgetState();
}

class _PesquisaWidgetState extends State<PesquisaWidget>
    with TickerProviderStateMixin {
  late PesquisaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PesquisaModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          450.0, 0.0, 100.0, 0.0),
                      child: Text(
                        'Pesquisa de Clima Organizacional',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/petrobras-logo-1-png.png',
                            width: 120.0,
                            height: 90.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: FlutterFlowTheme.of(context).warning,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).customColor1,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Inter',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          padding: const EdgeInsets.all(4.0),
                          tabs: const [
                            Tab(
                              text: ' Relacionamento no Trabalho',
                            ),
                            Tab(
                              text: 'Diversidade e Inclusão',
                            ),
                            Tab(
                              text: 'Local de trabalho',
                            ),
                            Tab(
                              text: 'Liderança',
                            ),
                            Tab(
                              text: ' Sugestões e denúncias',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [
                              () async {},
                              () async {},
                              () async {},
                              () async {},
                              () async {}
                            ][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: GridView(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  childAspectRatio: 1.0,
                                ),
                                scrollDirection: Axis.vertical,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.13),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 20.0, 10.0, 10.0),
                                              child: Text(
                                                'Quão satisfeito(a) você está em relação à liberdade de expressão na empresa?',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 22.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.09, 0.44),
                                            child: RatingBar.builder(
                                              onRatingUpdate: (newValue) =>
                                                  safeSetState(() =>
                                                      _model.ratingBarValue1 =
                                                          newValue),
                                              itemBuilder: (context, index) =>
                                                  Icon(
                                                Icons.star_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                              direction: Axis.horizontal,
                                              initialRating: _model
                                                  .ratingBarValue1 ??= 3.0,
                                              unratedColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                              itemCount: 5,
                                              itemSize: 40.0,
                                              glowColor:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/liberdade_de_expresso.jpg',
                                              width: double.infinity,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  const Stack(
                                    children: [],
                                  ),
                                  Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -0.92),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Relao_no_trabalho.png',
                                            width: double.infinity,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.16),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 10.0, 10.0),
                                          child: Text(
                                            'Como você avalia a qualidade do relacionamento entre os colegas de trabalho?',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.05, 0.44),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              safeSetState(() => _model
                                                  .ratingBarValue2 = newValue),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating:
                                              _model.ratingBarValue2 ??= 3.0,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent3,
                                          itemCount: 5,
                                          itemSize: 40.0,
                                          glowColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 1.0),
                              child: GridView(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                  childAspectRatio: 1.0,
                                ),
                                scrollDirection: Axis.vertical,
                                children: [
                                  Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(4.88, -0.62),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/236869-entenda-a-importancia-da-diversidade-no-recrutamento-e-selecao.jpg',
                                            width: 468.0,
                                            height: 353.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 10.0, 10.0),
                                          child: Text(
                                            ' Como você avalia a empresa quanto a valorização da diversidade e a inclusão no ambiente de trabalho?',
                                            textAlign: TextAlign.justify,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Stack(
                                    children: [],
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -0.72),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/coletivo.jpg',
                                              width: double.infinity,
                                              height: 357.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 1.16),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 10.0, 10.0),
                                            child: Text(
                                              '\n\nComo você avalia a evolução da empresa nos últimos anos em relação ao respeito à diversidade e bem estar dos funcionários?',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: RatingBar.builder(
                                      onRatingUpdate: (newValue) =>
                                          safeSetState(() => _model
                                              .ratingBarValue3 = newValue),
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: _model.ratingBarValue3 ??=
                                          3.0,
                                      unratedColor:
                                          FlutterFlowTheme.of(context).accent3,
                                      itemCount: 5,
                                      itemSize: 40.0,
                                      glowColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(7.1, -0.2),
                                    child: RatingBar.builder(
                                      onRatingUpdate: (newValue) =>
                                          safeSetState(() => _model
                                              .ratingBarValue4 = newValue),
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: _model.ratingBarValue4 ??=
                                          3.0,
                                      unratedColor:
                                          FlutterFlowTheme.of(context).accent3,
                                      itemCount: 5,
                                      itemSize: 40.0,
                                      glowColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 101.0, 0.0),
                                            child: RatingBar.builder(
                                              onRatingUpdate: (newValue) =>
                                                  safeSetState(() =>
                                                      _model.ratingBarValue5 =
                                                          newValue),
                                              itemBuilder: (context, index) =>
                                                  Icon(
                                                Icons.star_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                              direction: Axis.horizontal,
                                              initialRating: _model
                                                  .ratingBarValue5 ??= 3.0,
                                              unratedColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent3,
                                              itemCount: 5,
                                              itemSize: 40.0,
                                              glowColor:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 1.0,
                              ),
                              scrollDirection: Axis.vertical,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/office-working-employee-vector.jpg',
                                        width: 456.0,
                                        height: 200.0,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-0.8, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 20.0, 10.0, 10.0),
                                        child: Text(
                                          '\nComo você se sente com o seu local de trabalho físico? (Espaço, equipamentos, softwares etc.)',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 22.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-0.28, 0.39),
                                      child: RatingBar.builder(
                                        onRatingUpdate: (newValue) =>
                                            safeSetState(() => _model
                                                .ratingBarValue6 = newValue),
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                        direction: Axis.horizontal,
                                        initialRating:
                                            _model.ratingBarValue6 ??= 3.0,
                                        unratedColor:
                                            FlutterFlowTheme.of(context)
                                                .accent3,
                                        itemCount: 5,
                                        itemSize: 40.0,
                                        glowColor: FlutterFlowTheme.of(context)
                                            .tertiary,
                                      ),
                                    ),
                                  ],
                                ),
                                const Stack(
                                  children: [],
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.9),
                                        child: Text(
                                          ' Como você classifica as oportunidades de treinamento e desenvolvimento oferecidas pela empresa?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 22.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.07, 1.04),
                                        child: RatingBar.builder(
                                          onRatingUpdate: (newValue) =>
                                              safeSetState(() => _model
                                                  .ratingBarValue7 = newValue),
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                          direction: Axis.horizontal,
                                          initialRating:
                                              _model.ratingBarValue7 ??= 3.0,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent3,
                                          itemCount: 5,
                                          itemSize: 40.0,
                                          glowColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -0.92),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Captura_de_tela_2024-03-26_165813.png',
                                            width: double.infinity,
                                            height: 351.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 1.0,
                              ),
                              scrollDirection: Axis.vertical,
                              children: [
                                Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.68),
                                      child: Text(
                                        ' Como você avalia a sua relação com seu líder nos últimos meses?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              fontSize: 22.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-0.15, 0.95),
                                      child: RatingBar.builder(
                                        onRatingUpdate: (newValue) =>
                                            safeSetState(() => _model
                                                .ratingBarValue8 = newValue),
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                        direction: Axis.horizontal,
                                        initialRating:
                                            _model.ratingBarValue8 ??= 3.0,
                                        unratedColor:
                                            FlutterFlowTheme.of(context)
                                                .accent3,
                                        itemCount: 5,
                                        itemSize: 40.0,
                                        glowColor: FlutterFlowTheme.of(context)
                                            .tertiary,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.05),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/depositphotos_523855264-stock-illustration-team-leader-concept-illustration-business.jpg',
                                          width: double.infinity,
                                          height: 347.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Stack(
                                  children: [],
                                ),
                                Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.6),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 10.0),
                                        child: Text(
                                          'Como você avalia a comunicação entre a liderança e os funcionários?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 22.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/2-42-696x472.jpg',
                                        width: double.infinity,
                                        height: 293.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, 0.82),
                                      child: RatingBar.builder(
                                        onRatingUpdate: (newValue) =>
                                            safeSetState(() => _model
                                                .ratingBarValue9 = newValue),
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                        direction: Axis.horizontal,
                                        initialRating:
                                            _model.ratingBarValue9 ??= 3.0,
                                        unratedColor:
                                            FlutterFlowTheme.of(context)
                                                .accent3,
                                        itemCount: 5,
                                        itemSize: 40.0,
                                        glowColor: FlutterFlowTheme.of(context)
                                            .tertiary,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 50.0, 10.0, 10.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText:
                                              'Dê uma sugestão do que  melhorar no ambiente de trabalho',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFF4A74DB),
                                              width: 5.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              width: 5.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 5.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 5.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFF069BD5),
                                          prefixIcon: const FaIcon(
                                            FontAwesomeIcons.weixin,
                                            color: Color(0xFF2E60D9),
                                            size: 30.0,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        maxLines: 2,
                                        keyboardType: TextInputType.multiline,
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 50.0, 10.0, 10.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Autocomplete<String>(
                                        initialValue: const TextEditingValue(),
                                        optionsBuilder: (textEditingValue) {
                                          if (textEditingValue.text == '') {
                                            return const Iterable<
                                                String>.empty();
                                          }
                                          return [
                                            'Assédio moral',
                                            'Assédio sexual',
                                            'Violência no trabalho',
                                            'Corrupção',
                                            'Furto ou Roubo',
                                            'Discriminação',
                                            'Bullying',
                                            'Falta de equipamentos'
                                          ].where((option) {
                                            final lowercaseOption =
                                                option.toLowerCase();
                                            return lowercaseOption.contains(
                                                textEditingValue.text
                                                    .toLowerCase());
                                          });
                                        },
                                        optionsViewBuilder:
                                            (context, onSelected, options) {
                                          return AutocompleteOptionsList(
                                            textFieldKey: _model.textFieldKey2,
                                            textController:
                                                _model.textController2!,
                                            options: options.toList(),
                                            onSelected: onSelected,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            textHighlightStyle: const TextStyle(),
                                            elevation: 4.0,
                                            optionBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            optionHighlightColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            maxHeight: 200.0,
                                          );
                                        },
                                        onSelected: (String selection) {
                                          safeSetState(() =>
                                              _model.textFieldSelectedOption2 =
                                                  selection);
                                          FocusScope.of(context).unfocus();
                                        },
                                        fieldViewBuilder: (
                                          context,
                                          textEditingController,
                                          focusNode,
                                          onEditingComplete,
                                        ) {
                                          _model.textFieldFocusNode2 =
                                              focusNode;

                                          _model.textController2 =
                                              textEditingController;
                                          return TextFormField(
                                            key: _model.textFieldKey2,
                                            controller: textEditingController,
                                            focusNode: focusNode,
                                            onEditingComplete:
                                                onEditingComplete,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Denúncias',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFF4A74DB),
                                                  width: 5.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 5.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 5.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 5.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFF069BD5),
                                              prefixIcon: const Icon(
                                                Icons.campaign_rounded,
                                                color: Color(0xFF2E60D9),
                                                size: 30.0,
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: 2,
                                            keyboardType:
                                                TextInputType.multiline,
                                            validator: _model
                                                .textController2Validator
                                                .asValidator(context),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 50.0, 10.0, 10.0),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController3,
                                        focusNode: _model.textFieldFocusNode3,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Reportar problema',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFF4A74DB),
                                              width: 5.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              width: 5.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 5.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 5.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFF069BD5),
                                          prefixIcon: const FaIcon(
                                            FontAwesomeIcons.weixin,
                                            color: Color(0xFF2E60D9),
                                            size: 30.0,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        maxLines: 2,
                                        keyboardType: TextInputType.multiline,
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 100.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                          'PESQUISAFIM',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      text: 'Enviar',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 50.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
