import 'package:flutter/material.dart';

class TwitchVideosPage extends StatelessWidget {
  const TwitchVideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF6F30E0);
    const nikeDisabledColor = Colors.black;
    return Scaffold(
      appBar: _buildAppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          //------------------
          // Image Background
          //------------------
          Image.asset(
            'assets/img/bg.jpg',
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              _buildTitle(),
              _buildLiveImage(),
              _buildMetaData(),
              _buildChipsInfo(),
              _buildGamesIRLOptions(primaryColor),
              _buildOptions(primaryColor),
              _buidSecondTitle(),
              _buildHorizontalOptions()
            ],
          ),
        ],
      ),
      bottomNavigationBar:
          _buildBottomNavigationBar(primaryColor, nikeDisabledColor),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.purple[700],
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.pink,
          child: Icon(Icons.person_off_outlined),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.video_call,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.inbox,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.tv,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Padding _buildTitle() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Discover',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildLiveImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Image.asset('assets/img/live0.png'),
    );
  }

  Padding _buildMetaData() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: const [
          Text(
            'coco_chm',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Just Chatting',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChipsInfo() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: const [
            Chip(
              label: Text('English'),
            ),
            SizedBox(
              width: 8,
            ),
            Chip(
              label: Text('Canada'),
            ),
            SizedBox(
              width: 8,
            ),
            Chip(
              label: Text('Taiwan'),
            ),
            SizedBox(
              width: 8,
            ),
            Chip(
              label: Text('Canada'),
            ),
            SizedBox(
              width: 8,
            ),
            Chip(
              label: Text('Indonesia'),
            ),
            SizedBox(
              width: 8,
            ),
            Chip(
              label: Text('Germany'),
            ),
            SizedBox(
              width: 8,
            ),
            Chip(
              label: Text('Franch'),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildGamesIRLOptions(Color primaryColor) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Games',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.games,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Container(
              height: 45,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Esports',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.wind_power,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptions(Color primaryColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'IRL',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.games,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Container(
              height: 45,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Music',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buidSecondTitle() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Live channels we thing you\'ll like',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildHorizontalOptions() {
    return SizedBox(
      height: 100,
      child: ListView(
        padding: const EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/img/live1.png'),
          const SizedBox(
            width: 8,
          ),
          Image.asset('assets/img/live2.png'),
          const SizedBox(
            width: 8,
          ),
          Image.asset('assets/img/live3.png'),
          const SizedBox(
            width: 8,
          ),
          Image.asset('assets/img/live4.png'),
          const SizedBox(
            width: 8,
          ),
          Image.asset('assets/img/live5.png'),
          const SizedBox(
            width: 8,
          ),
          Image.asset('assets/img/live6.png'),
          const SizedBox(
            width: 8,
          ),
          Image.asset('assets/img/live7.png'),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(
      Color primaryColor, Color nikeDisabledColor) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue[900],
      selectedItemColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: nikeDisabledColor,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: ''),
      ],
    );
  }
}
