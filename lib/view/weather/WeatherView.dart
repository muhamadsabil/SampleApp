
import 'package:flutter/material.dart';
import 'package:newbloodstore1flutterapp/models/Weather.dart';
import 'package:newbloodstore1flutterapp/repository/WeatherRepo.dart';
import 'package:newbloodstore1flutterapp/blocs/WeatherBloc.dart';
import 'package:newbloodstore1flutterapp/view/ErrorView.dart';
import 'package:newbloodstore1flutterapp/view/LoadingView.dart';
import 'package:newbloodstore1flutterapp/models/ApiResponses.dart';


class WeatherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cityController = TextEditingController();
  WeatherRepo repo;
  WeatherBlock bloc;

  @override
  void initState() {
    super.initState();
    repo = WeatherRepo();
    bloc = WeatherBlock();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('APi calls'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:38.0),
        child: Container(
//          height: double.infinity,
          child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: cityController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.teal,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Colors.teal,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.blue,
                                style: BorderStyle.solid
                            )
                        ),
                        hintText: 'City Name',
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      onPressed: () {
                        bloc.fetchWeatherResultList(cityController.text);
                      },
                      color: Colors.lightBlue,
                      child: Text(
                        "Search",
                        style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  StreamBuilder<ApiResponse<Weather>>(
                    stream: bloc.weatherListStream,
                    builder: (context, snapShot) {
                      if (snapShot.hasData) {
                        switch (snapShot.data.status) {
                          case Status.LOADING:
                            return Loading(
                              loadingMessage: snapShot.data.message,
                            );
                          case Status.COMPLETED:
                            return WhetherHome(details: snapShot.data.data, city: cityController.text,);
                            break;
                          case Status.ERROR:
                            return Error(
                              errorMessage: snapShot.data.message,
                            );
                        }
                      }
                      return Container();
                    },
                  )
                ],
              )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }
}

class WhetherHome extends StatefulWidget {
  @override
  final details;
  final  city;
  WhetherHome({Key key, this.details, this.city}) : super(key: key);

  _WhetherHomeState createState() => _WhetherHomeState();
}

class _WhetherHomeState extends State<WhetherHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        height: 100,
        width: 100,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Temperature at',textAlign: TextAlign.center,),
              Text(widget.city),
              Text(
                widget.details.getMinTemp.round().toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
