import 'package:flutter/material.dart';
import 'package:inova_task/constant/values.dart';
import 'package:inova_task/model/getOverview.dart';
class ClassesScreen extends StatefulWidget {
  const ClassesScreen({Key? key}) : super(key: key);

  @override
  _ClassesScreenState createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  var _init = true;
  var _isLoading = false;
  var _have_error = false;
  var _errorMessage = '';
  Overview overview = Overview(coverphoto: '', name: '', userName: '', about: '');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void didChangeDependencies() {
    if (_init) {
      setState(() {
        _isLoading = true;
      });
      // print(widget.flightSearch.FlightTo.Name);
      getOverview().then((value) {
        overview=value;
        setState(() {
          _isLoading = false;
        });
      }).onError((error, stackTrace){
        _have_error=true;
        _errorMessage="$error";
        setState(() {
          _isLoading = false;
        });
        print("Error == $error");
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("$error"),
          backgroundColor: Colors.red,

        ));

      });
    }

    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Center(
            child: CircularProgressIndicator(
              backgroundColor: Theme.of(context).primaryColor,
              strokeWidth: 8,
            ),
          ),
        ],
      ),
    )
        :Column(
      children: [
        Text("About the series",style: titleStyle,),
        SizedBox(height: 5,),
        Text(overview.about,style: grayStyle,),


      ],
    );
  }
}
