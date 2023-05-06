import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';

class musicprovider extends ChangeNotifier {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  bool isplay=false;
  void inlita() {

    assetsAudioPlayer.open(
      Playlist(audios: [
        Audio("aaets/audio/s1.mp3"),

      ]),
      autoStart: false,
      showNotification: true,
    );
  }
  void playmusic()
  {
    isplay=false;
    assetsAudioPlayer.play();
    notifyListeners();
  }
  stopmusic()
  {
    isplay=true;
    assetsAudioPlayer.pause();
    notifyListeners();
  }
  nextmusic()
  {
    assetsAudioPlayer.next();
    notifyListeners();
  }
}
