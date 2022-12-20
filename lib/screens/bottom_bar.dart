import 'package:flutter/material.dart';
import 'package:yogaapp/constants.dart';
class bottombar extends StatelessWidget {
  const bottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
     height: 70,
     color: Colors.white,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        bottom_nav_bar(icon: Icons.calendar_month, title: 'Today',isActive: true,),
        bottom_nav_bar(icon: Icons.fitness_center, title: 'All Exercise',),
        bottom_nav_bar(icon: Icons.settings, title: 'Setting',),
       ],
     ),
      );
  }
}

class bottom_nav_bar extends StatelessWidget {
  const bottom_nav_bar({
    Key? key, required this.title, this.icon, @required  this.isActive = false,
  }) : super(key: key);
 final String title;
 final IconData? icon;
 final bool isActive;
 
  
  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Icon(icon, color: isActive ? kActiveIconColor : kTextColor),
       Text(title,style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),)
     ],
    );
  }
}

