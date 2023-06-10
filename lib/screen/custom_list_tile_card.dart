import 'package:flutter/material.dart';

class CustomListTileCard extends StatelessWidget {
  const CustomListTileCard({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    required this.onActionPressed,
    this.marginBottom = 0 ,
  });

  final IconData leadingIcon ;
  final String title ; 
  final String subTitle ;
  final IconData trailingIcon ;
  final double marginBottom ;
  final void Function() onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20 , bottom: marginBottom),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        // contentPadding: EdgeInsets.zero,
        // horizontalTitleGap: 0,
        onTap: () {},
        minLeadingWidth: 0,
        minVerticalPadding: 10,
        leading: Icon(leadingIcon),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: IconButton(
          onPressed: onActionPressed,
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}
