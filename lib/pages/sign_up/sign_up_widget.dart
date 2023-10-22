import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_model.dart';
export 'sign_up_model.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  late SignUpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpModel());

    _model.nameController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();
    _model.disabilitasController ??= TextEditingController();
    _model.disabilitasFocusNode ??= FocusNode();
    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();
    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/daftar.svg',
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(29.0, 53.0, 29.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: Text(
                            'Nama',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.nameController,
                            focusNode: _model.nameFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'masukkan nama anda',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFC7C8CD),
                                    fontSize: 12.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  14.0, 14.0, 14.0, 14.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF222A21),
                                  fontSize: 14.0,
                                ),
                            validator: _model.nameControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: Text(
                            'Disabilitas',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.disabilitasController,
                            focusNode: _model.disabilitasFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'jenis disabilitas',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFC7C8CD),
                                    fontSize: 12.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  14.0, 14.0, 14.0, 14.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF222A21),
                                  fontSize: 14.0,
                                ),
                            validator: _model.disabilitasControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: Text(
                            'Email',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.emailController,
                            focusNode: _model.emailFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'email',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFC7C8CD),
                                    fontSize: 12.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFC7C8CD),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  14.0, 14.0, 14.0, 14.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF222A21),
                                  fontSize: 14.0,
                                ),
                            validator: _model.emailControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: Text(
                            'Password',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.passwordController,
                            focusNode: _model.passwordFocusNode,
                            obscureText: !_model.passwordVisibility,
                            decoration: InputDecoration(
                              hintText: 'xxxxxxxxxxxxxx',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFFAEAEAE),
                                    fontSize: 12.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFAEAEAE),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFAEAEAE),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFAEAEAE),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFAEAEAE),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(40.07),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  14.0, 14.0, 14.0, 14.0),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => _model.passwordVisibility =
                                      !_model.passwordVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFFAEAEAE),
                                  size: 22.0,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF222A21),
                                  fontSize: 14.0,
                                ),
                            validator: _model.passwordControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(29.0, 44.0, 29.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.formKey.currentState == null ||
                          !_model.formKey.currentState!.validate()) {
                        return;
                      }
                      GoRouter.of(context).prepareAuthEvent();

                      final user = await authManager.createAccountWithEmail(
                        context,
                        _model.emailController.text,
                        _model.passwordController.text,
                      );
                      if (user == null) {
                        return;
                      }

                      await UsersRecord.collection
                          .doc(user.uid)
                          .update(createUsersRecordData(
                            displayName: _model.nameController.text,
                            disabilitas: _model.disabilitasController.text,
                          ));

                      await authManager.sendEmailVerification();

                      context.pushNamedAuth(
                        'SignIn-rev',
                        context.mounted,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    text: 'Daftar',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF6CC166),
                      textStyle: GoogleFonts.getFont(
                        'Poppins',
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(29.0, 108.0, 29.0, 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudah memiliki akun?',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'SignIn-rev',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                        child: Text(
                          'Masuk',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF6CC166),
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 29.0, 50.0),
                  child: StreamBuilder<List<TermPrivacyRecord>>(
                    stream: queryTermPrivacyRecord(
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitDualRing(
                              color: Color(0xFF6CC166),
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      List<TermPrivacyRecord> columnTermPrivacyRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final columnTermPrivacyRecord =
                          columnTermPrivacyRecordList.isNotEmpty
                              ? columnTermPrivacyRecordList.first
                              : null;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Dengan melanjutkan, berarti Anda menyetujui ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                TextSpan(
                                  text: 'Persyaratan Layanan RuangDisabilitas ',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0xFF074471),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.0,
                                  ),
                                  mouseCursor: SystemMouseCursors.click,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      await launchURL(
                                          columnTermPrivacyRecord!.linkTerm);
                                    },
                                ),
                                TextSpan(
                                  text:
                                      'dan menyatakan bahwa Anda telah membaca ',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Kebijakan Privasi ',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0xFF074471),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.0,
                                  ),
                                  mouseCursor: SystemMouseCursors.click,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      await launchURL(
                                          columnTermPrivacyRecord!.linkPrivacy);
                                    },
                                ),
                                TextSpan(
                                  text: 'kami.',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    },
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
