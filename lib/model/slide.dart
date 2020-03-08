import 'package:flutter/material.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title, 
    @required this.description
    });
}

final slideList = [
  Slide(
    imageUrl: 'assets/image/gambar1.jpg',
    title: 'Mendatangkan Guru',
    description: 'Mendatangkan guru ke tempat anda dengan cepat dan praktis'
  ),
  Slide(
    imageUrl: 'assets/image/bintang.png',
    title: 'Guru Berkualitas',
    description: 'Guru guru yang tersedia adalah guru guru berkualitas yang mampu mengajar anda dengan maksimal'
  ),
  Slide(
    imageUrl: 'assets/image/jengjeng.png',
    title: 'Pengembangan Ide',
    description: 'Pengembangan ide anda akan lebih terarah dan akan membuat anda menjadi semangat dalam belajar'
  ),
];