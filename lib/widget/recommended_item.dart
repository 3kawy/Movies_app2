import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:moviesapp/models/new_release_model.dart';


class RecommendedItem extends StatelessWidget {
   RecommendedItem({ required this.results,super.key});
Results results;
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 96.87,
      color: Color(0xff343534),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Stack(
    
      children: [
         CachedNetworkImage(
                  imageUrl:
                      "https://image.tmdb.org/t/p/original/${results.posterPath}" ??
                          '',
                 ),
        Positioned(
          top: -1,
          left: -6,
          child: Container(
    
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Icon awesome-bookmark.png'),
                  fit: BoxFit.contain,),  
             
              color: Colors.transparent,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 10,
                ),
                Text(
                  results.voteAverage.toString(),
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
         Padding(
           padding: const EdgeInsets.only(
            left: 8,
            right: 8
           ),
           child: Column(
            children: [
               Text(
              results.title??'',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            Text(
              results.releaseDate??'',
              style: TextStyle(
                color: Color(0xffB5B4B4),
                fontSize: 8,
              ),
            ),
            ],
           ),
         ),
          
        ],
      ),
    );
  }
}
