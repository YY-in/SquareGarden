import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



class HomeTopSwiper extends Swiper {
  HomeTopSwiper(List<String> images)
      : super(
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                ));
          },
          autoplay: true,
          control: SwiperControl(color: Colors.black45),
          itemCount: images.length,
          viewportFraction: 0.8,
          scale: 0.9,
        );
}
