import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yogaapp/constants.dart';
import 'package:yogaapp/screens/home.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .48,
            decoration: BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                  image: AssetImage("assets/icons/meditation_bg.png"),
                  fit: BoxFit.fitWidth,
                )),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
              
                    InkWell(
                      onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),))),
                      child: Icon(Icons.arrow_back, color: Colors.white, size: 25,)),
                    Text(
                      'Meditiation',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '3-10 MIN Course',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .65,
                      child: Text(
                        'Live happier and healthier by learning the fundamentals of meditation and mindfulness',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .56,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(29.0)),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle:
                              TextStyle(color: kBlueColor, fontSize: 17),
                          prefixIcon: Icon(
                            Icons.search,
                            color: kBlueColor,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 35,),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        session_card(session: 'Session 1', isdone: true,),
                        session_card(session: 'Session 2',),
                        session_card(session: 'Session 3',),
                        session_card(session: 'Session 4',),
                        session_card(session: 'Session 5'),
                        session_card(session: 'Session 6'),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text('Meditiation',style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.w300),),
                          SizedBox(height: 20,),
                    Container(
                       decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                       ),
                       child: Row(
                        children: [
                          SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
                           SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Basic 2',style: Theme.of(context)
                          .textTheme
                          .subtitle1),
                          Text('Start your deepen you practice'),
              
                          
              
                            ],
                          ),
                           SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.lock, color: kBlueColor,),
                          ),
                        ],
                       ),
                      )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class session_card extends StatelessWidget {
  const session_card({
    Key? key, required this.session, @required this.isdone = false,
  }) : super(key: key);

final String session;
final bool isdone;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        return ClipRRect(
          child: Container(
            width:  MediaQuery.of(context).size.width * .4,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(offset: Offset(0, 13),
                blurRadius: 13,
                spreadRadius: -13,
                color: kShadowColor
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
              
                onTap: (() {
                  
                }),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        height: 43,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isdone ? kBlueColor : Colors.white,
                          border: Border.all(color:kBlueColor),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isdone ? Colors.white : kBlueColor,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('$session',style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(fontWeight: FontWeight.w100),)
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
