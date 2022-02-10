import 'dart:convert';

import 'package:http/http.dart' as http;

class Overview {
  // "coverphoto": "",
  // "name": "the challenge",
  // "userName": "josh kramer",
  // "about": "get ready for ultimate fitness test.the chanlenge is a mountaing,get ready for ultimate fitness test.the
  // chanlenge is a mountaing .get ready for ultimate fitness test.the chanlenge is a mountaing. ",
  String coverphoto = "";
  String name = "";
  String userName = "";
  String about = "";

  Overview(
      {required this.coverphoto,
      required this.name,
      required this.userName,
      required this.about});
}

class Coach {
  String coachphoto = "";
  String name = "";
  String aboutCoach = "";

  Coach(
      {required this.coachphoto, required this.name, required this.aboutCoach});
}

Future<Overview> getOverview() async {
  Overview overview =
      Overview(coverphoto: '', name: '', userName: '', about: '');
  final url = Uri.parse(
      'https://91bacb66-db95-48b5-b1d2-ca0ffd77cbd8.mock.pstmn.io/getOverview');
  try {
    final response = await http.get(url);
    // print(response.body);

    final extractData = json.decode(response.body) as Map<dynamic, dynamic>;
    print(extractData);
    if (response.statusCode < 204) {
      return Overview(
        about: extractData['about'],
        coverphoto: extractData['coverphoto'],
        name: extractData['name'],
        userName: extractData['userName'],
      );
    }
    return overview;
  } catch (error) {
    throw error;
  }
}

Future<Coach> getCoachInfo() async {
  Coach couch = Coach(coachphoto: "", name: " ", aboutCoach: " ");
  final url = Uri.parse(
      'https://91bacb66-db95-48b5-b1d2-ca0ffd77cbd8.mock.pstmn.io/getCoachInfo');
  try {
    final response = await http.get(url);
    // print(response.body);

    final extractData = json.decode(response.body) as Map<dynamic, dynamic>;
    print(extractData);
    if (response.statusCode < 204) {
      return Coach(
        aboutCoach: extractData['aboutCoach'],
        coachphoto: extractData['coachphoto'],
        name: extractData['name'],
      );
    }
    return couch;
  } catch (error) {
    throw error;
  }
}
