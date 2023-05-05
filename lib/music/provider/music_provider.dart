import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';

class musicprovider extends ChangeNotifier
{
  void inlita()
  {
    AssetsAudioPlayer? assetsAudioPlayer =AssetsAudioPlayer();

    assetsAudioPlayer.open(Audio.network("https://www.youtube.com/watch?v=EdftT8GMU1U"));
  }
}