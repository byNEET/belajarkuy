import 'package:bimbelproject/src/ListItem/kategoriUjian_ItemList.dart';
import 'package:bimbelproject/src/UI/mataPelajaran_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          // physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 65.0, left: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hey,",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Cupertino",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 30.0, left: 30.0, top: 10.0),
                child: Divider(
                  color: Colors.redAccent,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Daftar Ujian",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: GridView.builder(
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.all(20.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: kategoriUjianItem.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MataPelajaranPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(),
                        // height: 40,
                        // width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 7.0),
                                child: Image.asset(
                                  kategoriUjianItem[index].urlgambar,
                                  width: 70,
                                  height: 70,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  kategoriUjianItem[index].namaujian,
                                  // textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
