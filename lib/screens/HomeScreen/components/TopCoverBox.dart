import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class TopCoverBox extends StatelessWidget {
  const TopCoverBox({
    Key? key,
    
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*.7,
      margin: EdgeInsets.only(bottom: kMarginSideDefault),
      
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height*.7 - 105,
            
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/watch.jpg"),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(kBorderRadiusDefault),bottomRight: Radius.circular(kBorderRadiusDefault))
            ),
          ),
          Positioned(
            bottom : 0,
            right: 0,
            left : 0,
            child:Container(
              height: 210,
              margin: EdgeInsets.symmetric(horizontal: kMarginSideDefault),
            
              decoration: (
                BoxDecoration(
                  boxShadow: [BoxShadow(offset:Offset(0, 10),color: Colors.white.withOpacity(.3),blurRadius : 10),],
                  color: kcolorPrimary.withOpacity(.7),
                  borderRadius: BorderRadius.all(Radius.circular(kBorderRadiusDefault))
                )
                
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kPaddingDefaultH,vertical: kPaddingDefaultV),
                    child: Row(
                      children: <Widget>[
                        
                        RichText(
                           text :TextSpan(text:"GHADI\n",style:Theme.of(context).textTheme.headline5!.copyWith(
                            color: kcolorSecondary,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold
                          ),
                          children: <TextSpan>[
                              TextSpan(text: 'RX4377EFQ', style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15)),
                              
                          ]
                          ),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.smoke,size: 50,
                        color: kcolorSecondary)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:10,horizontal: 20),
                    child: Container(
                      child: Text("This place is reserved for a small description of the item. Clicking on this box will navigate to the section about this category ",
                      style: TextStyle(
                        color: kcolorGrey,
                        fontSize: 15
                        
                      ),),
                    ),
                  )
                ],
              )
            )
            )
        ],
      ),
    );
  }
}