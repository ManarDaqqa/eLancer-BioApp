import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
   BioCard({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
    required this.onTap,
    this.marginBottom =0,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final void Function() onTap;
  double marginBottom;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: marginBottom),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 8,
      // margin: EdgeInsetsDirectional.only(start: 20,end: 20),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'SariaCon',
          ),
        ),
        subtitle: Text(subtitle),
        trailing: IconButton(
            onPressed: onTap,
            icon: Icon(trailingIcon)),
      ),
    );
  }
}