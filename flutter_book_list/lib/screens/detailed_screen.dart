import 'package:flutter/material.dart';
import 'package:flutter_book_list/TextStyles.dart';


class DetailedScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('책 제목'),
      ),
      body:Column(children: [ //body: column: Image, padding, Row(Container(Column, Text, Container)) ), 
        Image.network(
          'https://13266488751883217300.googlegroups.com/attach/ad9a9dd91670/Screen%20Shot%202021-04-26%20at%2014.30.43.png?part=0.1&view=1&vt=ANaJVrGFG20bDqvV_QNTkUeaB4VCu-QexENXg9mYrmGVWI9kEcyMUoi7zjbLm1gWHxqCQKxOiUqqyHUl2k3Q3Nsn-fgPXRYM1lrNGHYODHIofPZc5NThGCI'
        ),
        Padding(
          padding: EdgeInsets.all(3),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text('패키지 없이 구현하는 심층 강화학습',
                      style: TextStyles.dark_16),
                  ),
                  Text(
                    '손으로 풀어보는 q러닝부터',
                    style: TextStyles.dark_15,
                    
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.15, //mediaQuery 이용해 화면 크기 대비 텍스트박스 크기 설정
                    padding: EdgeInsets.all(10),
                    child: Center(child: Icon(Icons.star, color:Colors.red)),
                  
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(2),),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color:Colors.blue,
                    ),
                    Text('contact',
                    style: TextStyle(color:Colors.blue),)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.near_me,
                      color:Colors.blue,
                    ),
                    Text('Route',
                    style: TextStyle(color:Colors.blue),)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.save,
                      color:Colors.blue,
                    ),
                    Text('save',
                    style: TextStyle(color:Colors.blue),)
                  ],
                ),
                 
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text('이편지는영국에서시작되어'),
                )
                
              ],)
            )
          ],
                ),
      ]),
    );
  }
}