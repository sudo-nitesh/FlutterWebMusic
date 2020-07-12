import 'package:app/global.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPurpleColor,
      width: 200,
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: kDarkGreenColor,
              radius: 20,
            ),
            title: Text(
              'Hale',
              style: TextStyle(color: kGreenColor, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'BROWSE MUSIC',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: kWhiteColor),
            ),
          ),
          CategoryListTile(
            icon: Icons.whatshot,
            label: 'New',
          ),
          CategoryListTile(
            icon: Icons.headset,
            label: 'Podcast',
          ),
          CategoryListTile(
            icon: Icons.radio,
            label: 'Radio',
          ),
          CategoryListTile(
            icon: Icons.music_note,
            label: 'Music',
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'MY MUSIC',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: kWhiteColor),
            ),
          ),
          CategoryListTile(
            icon: Icons.play_arrow,
            label: 'Songs',
          ),
          CategoryListTile(
            icon: Icons.mic,
            label: 'Artists',
          ),
          CategoryListTile(
            icon: Icons.music_video,
            label: 'Albums',
          ),
          CategoryListTile(
            icon: Icons.playlist_add_check,
            label: 'Recent',
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'PLAYLISTS',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: kWhiteColor),
            ),
          ),
          CategoryListTile(
            icon: Icons.person,
            label: 'Rock',
          ),
          CategoryListTile(
            icon: Icons.favorite,
            label: 'Romantic',
          ),
          CategoryListTile(
            icon: Icons.music_video,
            label: 'Hip Hop',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: OutlineButton.icon(
              borderSide: BorderSide(color: kWhiteColor),
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: kWhiteColor,
              ),
              label: Text(
                'Create Playlist',
                style: kListTileTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryListTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryListTile({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: kWhiteColor,
      ),
      title: Text(
        label,
        style: kListTileTextStyle,
      ),
    );
  }
}