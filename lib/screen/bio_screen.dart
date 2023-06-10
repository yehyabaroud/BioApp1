import 'package:bioapp/widgets/custom_bio_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_list_tile_card.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BIO',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          // color: Colors.amber,
          gradient: LinearGradient(
            begin: AlignmentDirectional.topEnd,
            end: AlignmentDirectional.centerStart,
            colors: [
              Color(0xffFFF4D2),
              Color(0xffECF2FF),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/439/863/small/Basic_Ui__28186_29.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Yehya Baroud',
              style: GoogleFonts.cairo(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'y.n.baroud@gmail.com',
              style: GoogleFonts.cairo(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(
              thickness: 1.5,
              color: Color(0xffBAD7E9),
              indent: 40,
              endIndent: 40,
              height: 50,
            ),
            CustomBioCard(
              leadingIcon: Icons.phone_android_outlined,
              title: 'Mobile',
              subTitle: '+970-56-709-2500',
              trailingIcon: Icons.call,
              marginBottom: 10,
            ),
            // SizedBox(
            //   height: 10,
            // ),
            CustomListTileCard(
              leadingIcon: Icons.email,
              title: 'Email',
              subTitle: 'yehyabaroud@gmail.com',
              trailingIcon: Icons.send,
              onActionPressed: () {
                print('Email');
                _showMessag(context, message: 'Send Email');
              },
              marginBottom: 10,
            ),

            CustomListTileCard(
              leadingIcon: Icons.location_pin,
              title: 'Loacation',
              subTitle: 'Gaza',
              onActionPressed: () {
                print('Location');
                _showMessag(context, message: 'Open Map');
              },
              trailingIcon: Icons.map,
            ),
            Spacer(),
            Text('Yehya'),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void _showMessag(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.lightBlue[300],
        behavior: SnackBarBehavior.floating,
        elevation: 10,
        onVisible: () => print('Visible'),
        dismissDirection: DismissDirection.vertical,
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'UNDO',
          textColor: Colors.amber,
          onPressed: () {},
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
