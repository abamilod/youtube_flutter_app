import 'package:flutter/material.dart';

class VideoDetail extends StatefulWidget {
  VideoDetail({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _VideoDetailState createState() => new _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  var _giveVerse = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            detailVideoCardWidget(),
            middleAutoPlayWidgets(),
            Container(
              margin: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                bottom: 8.0,
              ),
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  horizontalVideoList(),
                  horizontalVideoList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  /// Detail Video card
  ///
  Widget detailVideoCardWidget() {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Color.fromRGBO(2, 18, 37, 0.8),
                child: FlutterLogo(
                  size: 200.0,
                ),
                elevation: 8.0,
                margin: EdgeInsets.zero,
              ),
              IconButton(
                iconSize: 64.0,
                icon: Icon(
                  Icons.play_circle_outline,
                ),
                onPressed: () {},
                color: Color.fromRGBO(27, 41, 58, 80.0),
              )
            ],
            alignment: Alignment(0.0, 0.0),
            fit: StackFit.passthrough,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              titleWidget(),
              viewsWidget(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: Divider(),
              ),
              optionsWidget(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                ),
                child: Divider(),
              ),
              channelWidget(),
            ],
          ),
        ],
      ),
    );
  }

  ///
  /// title Widget
  ///
  Widget titleWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 8.0,
        right: 8.0,
      ),
      child: Text(
        "Marvel Studios Avengers: Infinity War - Official Trailer",
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        maxLines: 2,
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }

  ///
  /// Views Widget
  ///
  Widget viewsWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "83M views",
        softWrap: true,
        maxLines: 2,
        style: TextStyle(fontSize: 12.0),
      ),
    );
  }

  Widget optionsWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          borderRadius: BorderRadius.circular(64.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Image.asset(
              "assets/images/thumbs_up.png",
              fit: BoxFit.cover,
              height: 24.0,
              width: 24.0,
            ),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(64.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Image.asset(
              "assets/images/thumbs_down.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(64.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Image.asset(
              "assets/images/share.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(64.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Image.asset(
              "assets/images/download.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(64.0),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Image.asset(
              "assets/images/add_playlist.png",
              height: 24.0,
              width: 24.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget channelWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 16.0,
            right: 8.0,
            bottom: 8.0,
          ),
          child: CircleAvatar(
            child: new FlutterLogo(),
            backgroundColor: Colors.redAccent,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Avengers Infinity war",
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Avengers Infinity war",
                softWrap: true,
                maxLines: 1,
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 16.0),
          child: FlatButton.icon(
            icon: Icon(
              Icons.play_arrow,
              size: 16.0,
              color: Color.fromRGBO(231, 0, 3, 0.8),
            ),
            label: Text(
              "SUBSCRIBE",
              style: TextStyle(
                color: Color.fromRGBO(231, 0, 3, 0.8),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  ///
  /// Up next auto play widget
  ///
  Widget middleAutoPlayWidgets() {
    return Container(
      margin: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Up next",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                "Autoplay",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                activeColor: Colors.redAccent,
                value: _giveVerse,
                onChanged: (bool newValue) {
                  setState(() {
                    _giveVerse = newValue;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget horizontalVideoList() {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Color.fromRGBO(2, 18, 37, 0.8),
        child: FlutterLogo(
          size: 100.0,
        ),
        elevation: 8.0,
        margin: EdgeInsets.zero,
      ),
      height: 100.0,
      width: 200.0,
      padding: EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
    );
  }

  Widget commentWidget() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        child: ListView(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlutterLogo(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Add a public comment...'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget commentTextLabelWidget() {
    return Container(
      margin: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Comments",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "256",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list),
          ),
        ],
      ),
    );
  }
}
