import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watch_store/constants.dart';
import 'package:watch_store/model/watchModel.dart';
import 'package:watch_store/screens/HomeScreen/components/SectionTitleWithButton.dart';

class IndividualItemScreen extends StatelessWidget {
  const  IndividualItemScreen({ Key? key }) : super(key: key);

  static String routeName="/IndividualItemScreen";
  final List<WatchModel> watchList = watches;
  

  @override
  Widget build(BuildContext context) {
    
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    Size size = MediaQuery.of(context).size;
    print(arg['id']);
    var product;

    void getProductData(){
      product = watchList.singleWhere((element) => element.id==arg['id']);
      print(product.features);
    }
    getProductData();
    return Scaffold(
      
      
      
      body: SafeArea(
        child: Center(
          child: Container(
            width: size.width,
            
            decoration: BoxDecoration(
            

            ),
            child: Column(
              children:<Widget>[
                Stack(
                  children: <Widget>[Container(
                    height: size.height * .5,
                    
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(product.image),
                        fit: BoxFit.cover
                      ),
                      borderRadius:BorderRadius.only(bottomLeft:Radius.circular(kBorderRadiusDefault),bottomRight: Radius.circular(kBorderRadiusDefault))

                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: size.height*.2,
                      width: size.width*.7,
                      padding: EdgeInsets.symmetric(vertical: kPaddingDefaultV,horizontal: kPaddingDefaultH),
                      
                      decoration: BoxDecoration(
                        color: kcolorPrimary.withOpacity(.7),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(kBorderRadiusDefault),bottomRight: Radius.circular(kBorderRadiusDefault))
                      ),
                      
                      child: Column(
                        children: [
                          Text(product.brandName,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kcolorSecondary,
                            fontSize: 20
                          ),),
                          Spacer(),
                          Text(product.description,style: TextStyle(
                            
                            color: kcolorSecondary,
                            fontSize: 18
                          ),),
                        ],
                      )
                      ,
                    ),
                  )]
                ),
                SectionTitleWIthButton(title:"Features",buttontext: "",disabled:true,),
                Column(
                  children: 
                          product.features.map<Widget>((e) => FeaureItem(title: e)).toList()
                  // <Widget>[
                  //   FeaureItem(title:"Nepal Mai Baneko"),
                  //   FeaureItem(title:"10 years Battery"),
                  //   FeaureItem(title:"20 years warranty"),
                  //   FeaureItem(title:"Nationwide Service Centres")
                  // ],
                )
              ]
            ),
          ),
        ),
      )
      
    );
  }
}

class FeaureItem extends StatelessWidget {
  const FeaureItem({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kMarginSideDefault,bottom: kPaddingDefaultH),
      child: Row(children: <Widget>[
        
        Icon(CupertinoIcons.arrow_right,size: 15,color: kcolorSecondary,),
        Text(title,style: TextStyle(
          fontSize: 17,
          color: kcolorSecondary
        ),)]),
    );
  }
}