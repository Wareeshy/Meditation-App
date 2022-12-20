import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yogaapp/constants.dart';
import 'package:yogaapp/screens/detail_screen.dart';
import 'bottom_bar.dart';
import 'card_category.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: bottombar(),
      body:Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.sort,color: Colors.white,),
                    ),
                  ),
                  Text('Good Morning!\nWareesha',style:Theme.of(context).textTheme.headline4,
                  ),
                  Container(
                      decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29.0)
                      ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.black38,fontSize: 17),
                         prefixIcon: Icon(Icons.search, color: Colors.black38,),
                         border: InputBorder.none,
                         
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                Expanded(
                    child: GridView.count(
                      crossAxisCount:2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    children: [
                        cardcategory(
                          svgSrc:'assets/icons/Hamburger.svg' ,
                          title: 'Diet Recommendation',
                          onpress: (){

                          },
                        ),
                         cardcategory(
                          svgSrc:'assets/icons/Excrecises.svg' ,
                          title: 'Exercise Tips',
                           onpress: (){
                            
                          },
                        ),
                         cardcategory(
                          svgSrc:'assets/icons/Meditation.svg' ,
                          title: 'Meditation', 
                          onpress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return DetailPage();
                              }),
                            );
                          },

                        ),
                         cardcategory(
                          svgSrc:'assets/icons/yoga.svg' ,
                          title: 'Yoga',
                           onpress: (){
                            
                          },
                        )
                    ],
                    ),
                  ),
                 
               
                ],
              ),
            ),
          )
        ],
      ) ,
     
    );
  }
}

