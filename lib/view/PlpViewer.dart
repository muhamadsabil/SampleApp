import 'package:flutter/material.dart';
import 'package:newbloodstore1flutterapp/blocs/ClocloPhotosBloc.dart';
import 'package:newbloodstore1flutterapp/models/Photos.dart';
import 'package:newbloodstore1flutterapp/models/ApiResponses.dart';



class PlpViewer extends StatefulWidget {
  @override
  _PlpViewerState createState() => _PlpViewerState();
}

class _PlpViewerState extends State<PlpViewer> {
  ClocloPhotosBloc _bloc;
  @override
  void initState() {
    _bloc = ClocloPhotosBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Photos stuff',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "roman",
            fontSize: 20,
          ),),),
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
                  return Products(list_item: snapshot.data.data);
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

class Products extends StatefulWidget {
  @override
  final List<Results> list_item;

  Products({Key key, this.list_item}) : super(key: key);

  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.list_item.map((photos) => photos.urls.small).length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Material(
                child: InkWell(
              onTap: () {},
              child: GridTile(
                footer: Container(
                  color: Colors.white12,
                  child: ListTile(
                    leading: Text(
                      widget.list_item[index].user.name.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black),
                    ),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(widget.list_item[index].urls.small),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            )),
          ),
        );
      },
    );
  }
}

class Error extends StatelessWidget {
  final String errorMessage;

  final Function onRetryPressed;

  const Error({Key key, this.errorMessage, this.onRetryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          RaisedButton(
            color: Colors.lightGreen,
            child: Text('Retry', style: TextStyle(color: Colors.white)),
            onPressed: onRetryPressed,
          )
        ],
      ),
    );
  }
}

class Loading extends StatelessWidget {
  final String loadingMessage;

  const Loading({Key key, this.loadingMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loadingMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 24),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.lightGreen),
          ),
        ],
      ),
    );
  }
}
