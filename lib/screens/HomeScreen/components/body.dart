import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:watch_store/constants.dart';
import 'package:watch_store/model/watchModel.dart';

import 'ProductRowWithImage.dart';
import 'SectionTitleWithButton.dart';
import 'TopCoverBox.dart';


class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  final  List<WatchModel> watchList = watches;


  
  
  @override
  Widget build(BuildContext context) {

    
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            TopCoverBox(),
            SectionTitleWIthButton(title:"Baki Saman",buttontext: "Heram",disabled:true,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: watchList.map((watch) => ProductRowWithImage(id:watch.id,image: watch.image, title: watch.brandName)).toList()

                // <Widget>[
                //   ProductRowWithImage(image : "assets/images/g1.jpg",title:"Nike"),
                //   ProductRowWithImage(image : "assets/images/g2.jpg",title:"Door"),
                //   ProductRowWithImage(image : "assets/images/g3.jpg",title:"Apple"),
                //   ProductRowWithImage(image : "assets/images/g4.jpg",title:"Tissot")
                // ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}

