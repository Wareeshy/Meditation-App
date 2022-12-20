import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class cardcategory extends StatelessWidget {
  const cardcategory({
    Key? key, required this.svgSrc, required this.title, required this.onpress,
  }) : super(key: key);

  final String svgSrc;
  final String  title;
  final VoidCallback onpress;
  
  get kShadowColor => null;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onpress,
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13.0),
               boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 17,
                    spreadRadius: -23,
                    color: Colors.black12,
                  ),
                ]
              
            ),
            child: Column(
              children: [
                SvgPicture.asset(svgSrc),
                Spacer(),
                Text( title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 15,color: Colors.black),
                ),
              ],
            ),
                        
          ),
        ),
      ),
    );
  }
}