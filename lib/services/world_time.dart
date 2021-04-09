import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; //location name for the UI
  String time; //time in that location
  String flag; //url for the assset flag icon
  String url; //url for the api location endpoint

  //creating a constructor
  WorldTime({this.location, this.flag, this.time, this.url});

  //get time function
  Future<void> getTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print(data);
      //
      //properties from the data
      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      //print(offset);
      final regexp =
          RegExp(r'^(?<plusMinus>[+-]?)(?<hours>[\d]+):(?<minutes>[\d]+)');
      final match = regexp.firstMatch(offset);

      final offsetDuration = Duration(
          hours: int.parse(match.namedGroup('hours')),
          minutes: int.parse(match.namedGroup('minutes')));

      DateTime now = DateTime.parse(datetime);
      if (match.namedGroup('plusMinus') == '+') {
        now = now.add(offsetDuration);
      } else if (match.namedGroup('plusMinus') == '-') {
        now = now.subtract(offsetDuration);
      } else {
        now = now;
      }

      //  print(now);
      // //convert the date to a string - setting the time property
      time = now.toString();
    } catch (e) {
      print('caught error: $e');
    }
  }
}
