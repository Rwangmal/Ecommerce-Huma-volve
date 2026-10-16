
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class sharedProductButton extends StatelessWidget{
  final String productId;
 const sharedProductButton({required this.productId});

  @override
  Widget build(BuildContext context) {
 return IconButton(onPressed: ()async{
final productLink ="https://balancedmealapp-6ccb7.web.app/products/$productId";
final String sharedMessage="look at this product:$productLink";
   await SharePlus.instance.share(
     ShareParams(text: sharedMessage,subject: "check out this product")
   );
 }, icon: Icon(Icons.share));
  }

}