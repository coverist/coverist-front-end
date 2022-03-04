import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  const GridviewPage({Key? key}) : super(key: key);

  @override
  _GridviewPageState createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title: Text('Coverist'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: GridView.builder(
          itemCount: 8, //item 개수
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, //1 개의 행에 보여줄 item 개수
            childAspectRatio: 3 / 5, //item 의 가로 3, 세로 5 의 비율
            mainAxisSpacing: 5, //수평 Padding
            crossAxisSpacing: 30, //수직 Padding
          ),
          padding: EdgeInsets.all(50),
          itemBuilder: (BuildContext context, int index) {
            //item 의 반목문 항목 형성
            return Container(
              child: Column(
                children: [
                  Image.asset("images/coverist_image.png"),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 30,
                    alignment: Alignment.center,
                    color: Colors.blueGrey,
                    child: Text(
                      '$index',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  // Expanded(
                  //   child: Container(
                  //     color: Colors.black,
                  //     alignment: Alignment.center,
                  //     child: Text(
                  //       "ABC",
                  //       style: TextStyle(
                  //         fontSize: 15,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}