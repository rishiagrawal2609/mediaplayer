import 'package:assets_audio_player/assets_audio_player.dart';

var songs = <Audio>[
  Audio(
    'assets/audios/allaroundtheworld.mp3',
    metas: Metas(
      id: 'Assets',
      title: 'All around The World La La',
      artist: 'R3HAB',
      image: MetasImage.asset('assets/img/lala.png'),
    ),
  ),
  Audio(
    'assets/audios/highonlife.mp3',
    metas: Metas(
      id: 'Assets',
      title: 'High On Life',
      artist: 'Mattin Garrix ft. Bonn',
      image: MetasImage.asset('assets/img/high.jpg'),
    ),
  ),
  Audio(
    'assets/audios/leanon.mp3',
    metas: Metas(
      id: 'Assets',
      title: 'Lean ON',
      artist: 'Major Laser & DJ Snake ft. MO',
      image: MetasImage.asset('assets/img/leanon.jpg'),
    ),
  ),
  Audio(
    'assets/audios/onandon.mp3',
    metas: Metas(
      id: 'Assets',
      title: 'ON and ON',
      artist: 'Carton',
      image: MetasImage.asset('assets/img/onandon.jpg'),
    ),
  ),
];
