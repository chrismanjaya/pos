import 'package:flutter/material.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {},
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Setting",
            style: yTextSubtitle,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          mini: true,
          onPressed: () {
            return ExtendedNavigator.of(context).replace(Routes.homePage);
          },
          backgroundColor: kAccentColor,
          child: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
            size: sIcon,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                width: sFormPayment,
                padding: EdgeInsets.all(sPaddingBody),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Branch
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0,
                        sPaddingBody,
                        0,
                        sPaddingContainer,
                      ),
                      child: Text(
                        "Branch Setting",
                        style: yTextBold,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          return ExtendedNavigator.of(context)
                              .push(Routes.branchPage);
                        },
                        style: yButtonForm,
                        child: Text(
                          "Edit Branch",
                          style: yTextBoldDark,
                        ),
                      ),
                    ),
                    // About
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0,
                        sPaddingBody,
                        0,
                        sPaddingContainer,
                      ),
                      child: Text(
                        "About",
                        style: yTextBold,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          return ExtendedNavigator.of(context)
                              .push(Routes.aboutPage);
                        },
                        style: yButtonForm,
                        child: Text(
                          "About",
                          style: yTextBoldDark,
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
    );
  }
}
