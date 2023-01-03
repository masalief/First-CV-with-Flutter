import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.grey,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.grey,
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildHeader(),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Text(
                    "Saya siswa alumni SMK Dwija Bhakti 1 Jombang Tahun Lulus 2019, dengan jurusan keahlian Komputer dan Jaringan, saya sedang mempelajari tentang Web Development & Aplication"),
              ),
              _buildTitle("Skills"),
              SizedBox(height: 10.0),
              _buildSkillRow("PHP", 0.80),
              SizedBox(height: 5.0),
              _buildSkillRow("Bootstrap", 0.80),
              SizedBox(height: 5.0),
              _buildSkillRow("Java", 0.68),
              SizedBox(height: 5.0),
              _buildSkillRow("Javascript", 0.75),
              SizedBox(height: 5.0),
              _buildSkillRow("VueJS", 0.75),
              SizedBox(height: 5.0),
              _buildSkillRow("Flutter", 0.68),
              SizedBox(height: 5.0),
              _buildSkillRow("Phyton", 0.68),
              SizedBox(height: 30.0),
              _buildTitle("Experience"),
              _buildExperienceRow(
                  company: "PT Lion Air Group",
                  position: "IT Helpdesk Support",
                  duration: "2021 - 2022"),
              _buildExperienceRow(
                  company: "PT Indomarco Prismatama",
                  position: "Store Crew Boy",
                  duration: "2021 - 2022"),
              SizedBox(height: 20.0),
              _buildTitle("Education"),
              SizedBox(height: 5.0),
              _buildExperienceRow(
                  company: "SMK DWIJA BHAKTI 1 Jombang",
                  position: "Teknik Komputer dan Jaringan",
                  duration: "2016 - 2019"),
              SizedBox(height: 20.0),
              _buildTitle("Contact"),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "alief*********@gmail.com",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "+62 8133 **** ***",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              _buildSocialsRow(),
              SizedBox(width: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.lightBlue,
          icon: Icon(FontAwesomeIcons.linkedinIn),
          onPressed: () {
            _launchURL("https://facebook.com");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.black,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchURL("https://github.com/masalief");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: Icon(FontAwesomeIcons.youtube),
          onPressed: () {
            _launchURL("https://www.youtube.com/watch?v=xfrIkvtcqME");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.green,
          icon: Icon(FontAwesomeIcons.whatsapp),
          onPressed: () {
            _launchURL("https://web.whatsapp.com");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {required String company, String? position, String? duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          Icons.circle_rounded,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 20.0,
        ),
        Container(
          width: 80.0,
          height: 80.0,
          child: CircleAvatar(
            child: CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.transparent,
              foregroundImage: AssetImage('assets/img/new_pas.jpg'),
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Alief Elza Putra",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              "Frontend Developer",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_on_rounded,
                  size: 20.0,
                  color: Colors.red,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Jombang, East Java Indonesia",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
