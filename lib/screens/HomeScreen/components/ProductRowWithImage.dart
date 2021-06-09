import 'package:flutter/material.dart';
import 'package:watch_store/screens/BrandScreen/IndividualItemScreen.dart';

import '../../../constants.dart';

class ProductRowWithImage extends StatelessWidget {
  const ProductRowWithImage({
    Key? key,
    required this.id,
    required this.image,
    required this.title
  }) : super(key: key); 

  final String image,title,id;

  
  @override
  Widget build(BuildContext context) {
    void toIndividualItemScreen(){

      
        Navigator.of(context).pushNamed(IndividualItemScreen.routeName,arguments: {"id":id});
    
    }

    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        toIndividualItemScreen();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: kPaddingDefaultV,left: 10),
        height: size.height*.2,
        width: size.width/3- (40/3),
        child: Stack(
          children: <Widget>[
            Container(
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
                )
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              
              child: Container(
                height: 50,
                
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: kcolorPrimary.withOpacity(.5),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                  
                ),
                child: Center(child: Text(title.toUpperCase(),style: TextStyle(
                  color: kcolorSecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),)),
              ),
            )
          ],
        ),
      
      ),
    );
  }
}

