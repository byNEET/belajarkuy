import 'package:bimbelproject/src/ListItem/mataPelajaran_ItemList.dart';
import 'package:bimbelproject/src/UI/matematika.dart';
import 'package:flutter/material.dart';

class MataPelajaranPage extends StatelessWidget {
  MataPelajaranPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 40.0,
              ),
              child: Text(
                'Pilih Mata Pelajaran',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: itemMataPelajaran.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SoalUjianPage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.lightBlue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30.0,
                          child: Image.asset(
                            itemMataPelajaran[index].urlgambar,
                            height: 30.0,
                          ),
                        ),
                        Text(
                          itemMataPelajaran[index].namapelajaran,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
