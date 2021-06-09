import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/screens/BrandScreen/IndividualItemScreen.dart';

import '../../../constants.dart';

class SectionTitleWIthButton extends StatelessWidget {
  const SectionTitleWIthButton({
    Key? key,
    required this.title,required this.buttontext, required this.disabled
  }) : super(key: key); 
  final String title, buttontext;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    void navigateScreen(){

    Navigator.of(context).pushNamed(IndividualItemScreen.routeName);
    
   }
    return Container(
      margin: EdgeInsets.only(bottom: kPaddingDefaultH),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: kPaddingDefaultH),
      child: Row(
        children: [
          Stack(
            children:<Widget>[
               Padding(
                 padding: const EdgeInsets.only(bottom:5),
                 child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,color: kcolorSecondary),
              ),
               ),
              Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 5,
              
                color: kcolorPrimary.withOpacity(.7),
                ),
              )],
          ),
          Spacer(),
          TextButton(onPressed: (){
            navigateScreen();
          }, child: !disabled?Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: kcolorPrimary
            ),
            
            child: Row(
              children: <Widget>[Text(buttontext,style: TextStyle(
                color : kcolorSecondary,
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),),
              SizedBox(width: 5),
                Icon(CupertinoIcons.arrow_right,size: 15,color: kcolorSecondary,)
              ],
            )):SizedBox.shrink(),)
        ],
      ),
    );
  }
}

