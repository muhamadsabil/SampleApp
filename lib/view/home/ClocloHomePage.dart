import 'package:flutter/material.dart';
import 'package:newbloodstore1flutterapp/models/Photos.dart';
import 'package:newbloodstore1flutterapp/models/ClocloCategories.dart';
import 'package:newbloodstore1flutterapp/blocs/ClocloPhotosBloc.dart';
import 'package:newbloodstore1flutterapp/models/ApiResponses.dart';
import 'package:newbloodstore1flutterapp/view/ErrorView.dart';
import 'package:newbloodstore1flutterapp/view/LoadingView.dart';
import 'package:newbloodstore1flutterapp/view/drawerNavigation/mainDrawer.dart';



class PhotosViewer extends StatefulWidget {
  final ClocloCategories clocloCategories;
  PhotosViewer({Key key, this.clocloCategories}) : super(key: key);

  @override
  _PhotosViewerState createState() => _PhotosViewerState();
}

class _PhotosViewerState extends State<PhotosViewer> {
  @override
  int _currentIndex = 0;

  ClocloPhotosBloc _bloc;

  void initState() {
    super.initState();
    _bloc = ClocloPhotosBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        actions: <Widget>[
          new IconButton(icon: (Icon(Icons.shopping_cart, color: Colors.white,)), onPressed: (){}),
          new IconButton(icon: (Icon(Icons.search, color: Colors.white,)), onPressed: (){})
        ],
      ),
      drawer: MainDrawer(),
      backgroundColor: Colors.white12,
      body: RefreshIndicator(
        onRefresh: () => _bloc.fetchClocloPhotosList(),
        child: StreamBuilder<ApiResponse<List<Results>>>(
          stream: _bloc.clocloListStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              switch (snapshot.data.status) {
                case Status.LOADING:
                  return Loading(loadingMessage: snapshot.data.message);
                  break;
                case Status.COMPLETED:
                  return ClocloHomePage(photosList: snapshot.data.data);
                  break;
                case Status.ERROR:
                  return Error(
                    errorMessage: snapshot.data.message,
                    onRetryPressed: () => _bloc.fetchClocloPhotosList(),
                  );
                  break;
              }
            }
            return Container();
          },
        ),
      ),
    );
  }
  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}


class ClocloHomePage extends StatefulWidget {
  final List<Results> photosList;
  ClocloHomePage({Key key, this.photosList}) : super(key: key);

  @override
  _ClocloAppState createState() => _ClocloAppState();
}

class _ClocloAppState extends State<ClocloHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 5.0,
            ),
            child: Container(
              width: double.infinity,
//              color: Colors.redAccent,
              height: 430,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ListTile(
                            leading: CircleAvatar(
                              child: ClipOval(
                                child: Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(
                                      widget.photosList[index].urls.small),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              widget.photosList[index].user.firstName.toString(),style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                            subtitle: Text(
                              widget.photosList[index].user.location.toString(),style: TextStyle(
                              fontSize: 12,
                            ),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(0),
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      widget.photosList[index].urls
                                          .small),
                                  fit: BoxFit.cover)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 30,
                                ),
                                Text(widget.photosList[index].likes
                                    .toString()),
                                SizedBox(
                                  width: 20,
                                ),
                                IconButton(
                                  icon: Icon(Icons.comment),
                                  iconSize: 30,
                                ),
                                Text("12")
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: widget.photosList.map((fotos) => fotos.urls.small).length,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        addAutomaticKeepAlives: false,

      ),
    );
  }
}