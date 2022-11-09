// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import '../../theme app.dart';
import 'text_widget.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://www.citypng.com/public/uploads/preview/hd-profile-user-round-green-icon-symbol-transparent-png-11639594320ayr6vyoidq.png",
              height: 105.63,
              width: 105.63,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: 'اسم المستخدم',
              color: ThemeApp.black,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const WidProfile(
            text: "معلومات الحساب",
            image: "https://img.icons8.com/windows/24/519872/contacts.png"),
        const SizedBox(
          height: 15,
        ),
        const WidProfile(
            text: "الاعدادات",
            image: "https://img.icons8.com/small/24/519872/gear.png"),
        const SizedBox(
          height: 15,
        ),
        const WidProfile(
            text: "التواصل",
            image:
                "https://img.icons8.com/external-anggara-basic-outline-anggara-putra/24/519872/external-telephone-interface-anggara-basic-outline-anggara-putra-2.png"),
        const SizedBox(
          height: 15,
        ),
        const WidProfile(
            text: "مركز المساعدة",
            image:
                "https://img.icons8.com/windows/32/519872/why-us-female.png"),
        const SizedBox(
          height: 15,
        ),
        const WidProfile(
            text: "اللغة",
            image:
                "https://img.icons8.com/material-outlined/24/519872/language.png")
      ],
    );
  }
}

class WidProfile extends StatelessWidget {
  final String text;
  final String image;
  const WidProfile({required this.image, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextWidget(text: text, color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w500,)
            ],
          ),
          Container(
            width: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.network(
                  image,
                  height: 40,
                  width: 60,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
