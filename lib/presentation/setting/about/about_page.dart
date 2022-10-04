import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/about/version_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_path.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About",
          style: yTextSubtitle,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocProvider<VersionBloc>(
            create: (context) => getIt<VersionBloc>()
              ..add(
                VersionEvent.getVersion(),
              ),
            child: BlocBuilder<VersionBloc, VersionState>(
              builder: (context, state) => Container(
                margin: EdgeInsets.all(sPaddingBody),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Logo
                      Container(
                        width: sIconLauncher,
                        margin: EdgeInsets.only(
                          bottom: sPaddingContainer,
                        ),
                        child: Image(
                          image: AssetImage(pathIconLauncher),
                        ),
                      ),
                      // Company Name
                      Container(
                        width: double.infinity,
                        child: Text(
                          state.versionModel.appName,
                          textAlign: TextAlign.center,
                          style: yTextSubtitleAccent,
                        ),
                      ),
                      SizedBox(
                        height: sPaddingBody,
                      ),
                      // Version
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Version: " +
                              state.versionModel.version +
                              " (Build " +
                              state.versionModel.buildNumber +
                              ")",
                          textAlign: TextAlign.center,
                          style: yTextNormal,
                        ),
                      ),
                      // Copyright
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Copyright © 2021 Mobile POS, All Right Reserved",
                          textAlign: TextAlign.center,
                          style: yTextNormal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
