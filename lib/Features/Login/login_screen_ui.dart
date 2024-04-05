import 'package:flutter/material.dart';
import 'package:jfs/CommonWidgets/common_button.dart';
import 'package:jfs/CommonWidgets/common_date_picker.dart';
import 'package:jfs/CommonWidgets/common_image.dart';
import 'package:jfs/CommonWidgets/common_text_widget.dart';
import 'package:jfs/CommonWidgets/common_textfield.dart';
import 'package:jfs/CommonWidgets/enum.dart';
import 'package:jfs/FunctionalRequirements/Config/colors.dart';
import 'package:jfs/FunctionalRequirements/Config/font_size.dart';
import 'package:jfs/FunctionalRequirements/Config/images.dart';
import 'package:jfs/FunctionalRequirements/Config/strings.dart';
import 'package:jfs/FunctionalRequirements/Config/width_height.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: CustomWidthHeight.editButtonPaddingLeft,
              top: CustomWidthHeight.editButtonPaddingRight),
          child: CustomButton(
            radius: CustomWidthHeight.editButtonRadius,
            width: CustomWidthHeight.editButtonWidth,
            buttonText: CustomStrings.editConnection,
            onPressed: () {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    child: dialogContent(context),
                  );
                },
              );
            },
            textColor: Colors.red,
            fontSize: CustomFontSize.editButtonSize,
            side: const BorderSide(width: CustomWidthHeight.editButtonSide),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Container(
                  child: Column(
                    children: [
                      CustomText(
                          data: CustomStrings.orderEntry,
                          fontSize: CustomFontSize.headingSize,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      const SizedBox(
                          height: CustomWidthHeight.loginPaddingHeight),
                      Container(
                        child: CustomText(
                          textAlign: TextAlign.start,
                          data: CustomStrings.deliveryDate,
                          fontSize: CustomFontSize.subHeadingSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const CustomDatePicker(),
                      const SizedBox(
                        height: CustomWidthHeight.loginPadding,
                      ),
                      CustomTextField(
                          width: CustomWidthHeight.textFieldWidth,
                          borderRadius: CustomWidthHeight.editButtonRadius,
                          hintText: CustomStrings.username,
                          hinTextColor: Colors.grey,
                          textAlign: TextAlign.center),
                      const SizedBox(
                        height: CustomWidthHeight.paddingHeight,
                      ),
                      CustomTextField(
                          width: CustomWidthHeight.textFieldWidth,
                          borderRadius: CustomWidthHeight.editButtonRadius,
                          hintText: CustomStrings.password,
                          hinTextColor: Colors.grey,
                          textAlign: TextAlign.center),
                      const SizedBox(
                        height: CustomWidthHeight.loginPadding,
                      ),
                      CustomButton(
                        color: CustomColors.loginButton,
                        radius: CustomWidthHeight.loginRadius,
                        width: CustomWidthHeight.loginButtonWidth,
                        height: CustomWidthHeight.loginButtonHeight,
                        buttonText: CustomStrings.login,
                        onPressed: () {},
                        textColor: Colors.white,
                        elevation: CustomWidthHeight.elevation,
                        fontSize: CustomFontSize.loginButtonSize,
                      ),
                    ],
                  ),
                ),
              ),
              const CustomImageWidget(
                type: ImageType.asset,
                imageUrl: MyImages.loginImage,
                fit: BoxFit.fill,
                height: 300,
                width: 300,
              )
            ],
          ),
        ),
      ],
    ));
  }
}

Widget dialogContent(BuildContext context) {
  return Wrap(
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 10),
        width: 650,
        height: 500,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 20,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(side: BorderSide.none,
                    radius:0,
                    width: 110,
                    height: CustomWidthHeight.loginButtonHeight,
                    buttonText: CustomStrings.cancel,
                    onPressed: () {
                    Navigator.of(context).pop();
                    },
                    textColor: Colors.red,
                    fontSize: CustomFontSize.subHeadingSize,
                  ),                  // CustomText(data: "Cancel", color: Colors.red, fontSize: 20),
                  CustomText(
                      data: CustomStrings.connectionSettings,
                      color: Colors.black,
                      fontSize: 20),
                  CustomButton(side: BorderSide.none,
                    radius:0,
                    width: 110,
                    height: CustomWidthHeight.loginButtonHeight,
                    buttonText: CustomStrings.save,
                    onPressed: () {},
                    textColor: Colors.red,
                    fontSize: CustomFontSize.subHeadingSize,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                              data:  CustomStrings.originator,
                              color: Colors.black,
                              fontSize: 20),
                          CustomTextField(
                              width: CustomWidthHeight.textFieldWidth400,
                              borderRadius: CustomWidthHeight.editButtonRadius,
                              hintText: "SOENTRY",
                              hinTextColor: Colors.black,
                              textAlign: TextAlign.left),
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                              data: CustomStrings.serverPath,
                              color: Colors.black,
                              fontSize: 20),
                          CustomTextField(
                              width: CustomWidthHeight.textFieldWidth400,
                              borderRadius: CustomWidthHeight.editButtonRadius,
                              hintText: "67.60.17.205",
                              hinTextColor: Colors.black,
                              textAlign: TextAlign.left),
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                              data: CustomStrings.applicationName,
                              color: Colors.black,
                              fontSize: 20),
                          CustomTextField(
                              width: CustomWidthHeight.textFieldWidth400,
                              borderRadius: CustomWidthHeight.editButtonRadius,
                              hintText: "WSJFSiPad",
                              hinTextColor: Colors.black,
                              textAlign: TextAlign.left),
                        ],
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
