import 'package:bimbelproject/src/ListItem/soalUjian_ItemList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SoalUjianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bank Soal"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: AnimationLimiter(
          child: Column(
              children: AnimationConfiguration.toStaggeredList(
            duration: Duration(milliseconds: 375),
            childAnimationBuilder: (widget) => SlideAnimation(
              child: FadeInAnimation(
                child: widget,
              ),
            ),
            children: <Widget>[
              // Padding(
              //   padding: EdgeInsets.only(top: 25.0),
              //   child: Center(
              //     child: Text(
              //       'Animovie',
              //       style: TextStyle(
              //         fontSize: 50.0,
              //         fontWeight: FontWeight.w300,
              //       ),
              //     ),
              //   ),
              // ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: itemSoalUjian.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          title: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                itemSoalUjian[index].judulsoal,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          subtitle: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${itemSoalUjian[index].jumlahsoal} Soal",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.black26,
                            radius: 14,
                            child: Icon(
                              Icons.lock,
                              size: 15,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    );
                    // Container(
                    //   margin: EdgeInsets.all(10),
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: Column(
                    //     children: <Widget>[
                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Align(
                    //           alignment: Alignment.topLeft,
                    //           child: Text(
                    //             itemSoalUjian[index].judulsoal,
                    //             style: TextStyle(
                    //               fontSize: 17.0,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Align(
                    //           alignment: Alignment.topLeft,
                    //           child: Text(
                    //               "${itemSoalUjian[index].jumlahsoal} Soal"),
                    //         ),
                    //       ),
                    //       Divider(),
                    //     ],
                    //   ),
                    // );
                  })
            ],
          )),
        ),
      ),
    );
  }
}
