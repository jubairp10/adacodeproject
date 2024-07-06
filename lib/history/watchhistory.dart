// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// Future<String?> getLastWatchedVideo() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   List<String> videoHistory = prefs.getStringList('videoHistory') ?? [
//     'X3paOmcrTjQ',
//     'gQDByCdjUXw',
//     'iLnmTe5Q2Qw',
//     '_WoCV4c6XOE',
//     'KmzdUe0RSJo',
//     '6jZDSSZZxjQ',
//     'p2lYr3vM_1w',
//     '7QUtEmBT_-w',
//     '34_PXCzGw1M',
//   ];
//   if (videoHistory.isNotEmpty) {
//     return videoHistory.last;
//   }
//   return null;
// }
//
// class HistoryPage extends StatefulWidget {
//   @override
//   _HistoryPageState createState() => _HistoryPageState();
// }
//
// class _HistoryPageState extends State<HistoryPage> {
//   YoutubePlayerController? _controller;
//   String? _lastWatchedVideoId;
//
//   @override
//   void initState() {
//     super.initState();
//     _loadLastWatchedVideo();
//   }
//
//   Future<void> _loadLastWatchedVideo() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? videoId = prefs.getString('lastWatchedVideoId');
//     setState(() {
//       _lastWatchedVideoId = videoId;
//       if (_lastWatchedVideoId != null) {
//         _controller = YoutubePlayerController(
//           initialVideoId: _lastWatchedVideoId!,
//           flags: YoutubePlayerFlags(
//             autoPlay: true,
//             mute: false,
//           ),
//         );
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     _controller?.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('History'),
//       ),
//       body: _lastWatchedVideoId == null
//           ? Center(child: Text('No video watched yet.'))
//           : YoutubePlayer(
//         controller: _controller!,
//         showVideoProgressIndicator: true,
//       ),
//     );
//   }
// }
