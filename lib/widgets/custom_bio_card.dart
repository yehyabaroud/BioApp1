import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBioCard extends StatelessWidget {
  const CustomBioCard({
    super.key,
    required IconData leadingIcon,
    required String title,
    required String subTitle,
    required IconData trailingIcon,
    double marginBottom = 0 ,
  })  : _leadingIcon = leadingIcon,
        _title = title,
        _subTitle = subTitle,
        _trailingIcon = trailingIcon,
        _marginBottom = marginBottom;

  final IconData _leadingIcon;
  final String _title;
  final String _subTitle;
  final IconData _trailingIcon;
  final double _marginBottom;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: _marginBottom
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      shadowColor: Color(0xff95BDFF),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(_leadingIcon),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  _subTitle,
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                _trailingIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
