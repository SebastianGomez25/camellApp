 import 'package:camellapp/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardType3 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CardType3({
    super.key,
    required this.imageUrl,
    required this.name,
  });
 
 
 
 @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 20,
      color: Colors.white,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          // Image.network(src)
          // Image(image: 'http://portal.senasofiaplus.edu.co/emprendimiento/bannerOferta.jpg'),
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/Loading_2.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1000),
          ),

          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name ?? "CamellApp"),
          ),
        ],
      ),
    );
  }
}
