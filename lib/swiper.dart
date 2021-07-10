import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List imgList = [
    'https://3.bp.blogspot.com/-yWrKS3nP1oA/WC36lBtpHaI/AAAAAAAAD-4/J4bcVZxpYPAyNOvD_riyo5BalwwiP1xcwCLcB/s1600/_MG_3864.JPG',
    'https://static3.bigstockphoto.com/2/8/1/large1500/182751805.jpg',
    'https://cdn.zmescience.com/wp-content/uploads/2013/12/geo_picture4.jpg',
    'https://cdn.zmescience.com/wp-content/uploads/2013/12/5630330458_5b76989d83_b.jpg',
    'https://vsemart.com/wp-content/uploads/2015/09/Marble-Cave-a-maze-of-beautiful-geological-formations-unearthly-landscapes-painted-by-nature-2-300x187.jpg'
        'https://static.vecteezy.com/system/resources/thumbnails/001/616/725/original/beautiful-shot-inside-a-geological-formation-of-orange-rocks-in-4k-free-video.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            imgList[index],
            fit: BoxFit.fill,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.indigo),
                  strokeWidth: 5,
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
                ),
              );
            },
          );
        },
        itemCount: 5,
        //pagination: new SwiperPagination(),
        control: new SwiperControl(
          iconPrevious: null,
          iconNext: null,
        ),
      ),
    );
  }
}
