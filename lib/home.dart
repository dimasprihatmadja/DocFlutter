import 'dart:async';
import 'dart:convert';
import 'package:bubble_flutter/detail.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  Data kata = new Data();
  var isi, data, results;
  var ddVal = 'ALL';
  var ddVal2 = 'A to Z';

  void initState() {
    data = kata.getData();
    isi = data;
    super.initState();
  }

  filter(x, y) {
    ddVal = x;
    kata = new Data();
    setState(() {
      isi = kata.getData();
      if (x != 'ALL') {
        isi.removeWhere((m) => m['kategori'] != x);
      }
      var result = isi
          .where(
            (elem) => elem['name'].toString().toLowerCase().contains(
                  y.toLowerCase(),
                ),
          )
          .toList();
      var result2 = jsonEncode(result);
      isi = jsonDecode(result2);
    });
  }

  bubble(x) {
    ddVal2 = x;
    if (ddVal2 == 'A to Z') {
      setState(() {
        isi.sort((a, b) {
          return a['name'].toString().compareTo(b['name'].toString());
        });
      });
    } else {
      setState(() {
        isi.sort((a, b) {
          return b['name'].toString().compareTo(a['name'].toString());
        });
      });
    }
  }

  search(x) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red[800],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.blue[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Padding(
                        //   padding: EdgeInsets.only(top:20),
                        //   child: Icon(
                        //     Icons.book,
                        //     color: Colors.white,
                        //     size: 30
                        //   ),
                        // ),
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Image.asset(
                              'assets/icon.png',
                              height: 40,
                              width: 40,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "KATA RANI",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: ddVal2,
                                  isExpanded: true,
                                  elevation: 5,
                                  icon: Icon(Icons.sort),
                                  style: TextStyle(color: Colors.black),
                                  items: <String>['A to Z', 'Z to A']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  hint: Text(
                                    "Please choose sort",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onChanged: (String value) {
                                    bubble(value);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: ddVal,
                                  isExpanded: true,
                                  elevation: 5,
                                  icon: Icon(Icons.filter_list),
                                  style: TextStyle(color: Colors.black),
                                  items: <String>[
                                    'ALL',
                                    'Keluarga',
                                    'Moral',
                                    'Jati Diri',
                                    'Mandiri',
                                    'Kebajikan',
                                    'Kejujuran',
                                    'Disiplin',
                                    'Tata Krama',
                                    'Jodoh'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  hint: Text(
                                    "Please choose a category",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onChanged: (String value) {
                                    filter(value, "");
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 10,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Search....',
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.search),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 0.0),
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(30),
                                ),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            onChanged: (content) {
                              filter(ddVal, content);
                            },
                          ),
                        ),
                      ],
                    ),
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        15.0, 0, 15.0, 8.0),
                  ),
                ],
              ),
            ),

            //Body Container
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: isi.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Card(
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailScreen(isi[index]['id']),
                                  ),
                                );
                              },
                              title: Text(isi[index]['name']),
                              subtitle: Text(isi[index]['kategori']),
                              trailing: new Column(
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              DetailScreen(isi[index]['id']),
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      // padding: EdgeInsets.all(3),
                                      primary:
                                          Colors.blue[300], // <-- Button color
                                      onPrimary: Colors.red, // <-- Splash color
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          decoration: new BoxDecoration(
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20.0,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
