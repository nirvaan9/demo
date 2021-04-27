import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homescreen/models/activityModel.dart';
import 'package:homescreen/models/albumModels.dart';

class AlbumScreen extends StatefulWidget {
  final Album album;
  AlbumScreen({this.album});
  @override
  _AlbumScreenState createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    Text _buildRatingStars(int rating){
      String stars = '';
      for(int i =0; i < rating; i++){
        stars += '⭐ ';
      }
      stars.trim();
      return Text(stars) ;
    }
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 0.2),
                          blurRadius: 6.0),
                    ]),
                child: Hero(
                  tag: widget.album.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: NetworkImage(widget.album.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 30.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.search),
                          onPressed: () => Navigator.pop(context),
                          iconSize: 25.0,
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.sortAmountDown),
                          onPressed: () => Navigator.pop(context),
                          iconSize: 25.0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.album.city,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.lock,
                          size: 15.0,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          widget.album.country,
                          style: TextStyle(
                            color: Colors.blueGrey.shade500,
                            fontSize: 15.0
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 28.0,
                  bottom: 20.0,
                  child: Icon(Icons.location_on,size: 25.0,))
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0,bottom: 15.0),
              itemCount: widget.album.activities.length,
              itemBuilder: (BuildContext context, int index){
                Activity activity = widget.album.activities[index];
                  return Stack(
                    children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                    height: 170.0,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding:EdgeInsets.fromLTRB( 100, 20, 20, 20),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120,
                              child: Text(activity.name,style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),

                            ),
                            Column(
                              children: [Text('${activity.likes}',style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                                Text('mix ',style: TextStyle(
                                ),
                                ),
                             ]
                            ),
                          ],
                        ),
                          Text(activity.type),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                 activity.startTimes[0],
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  activity.startTimes[1],
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                      Positioned(
                        left: 20.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: ClipRRect(borderRadius: BorderRadius.circular(20.0),
                          child: Image(width: 115,image: NetworkImage(activity.imageUrl),fit: BoxFit.cover,),
                        ),
                      )
                    ],
                 );
                },
            ),
          )
        ],
      ),
    );
  }
}
