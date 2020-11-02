import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'มหาวิทยาลัยทักษิณ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('img/tsu.png'),
                width: MediaQuery.of(context).size.width,
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'มหาวิทยาลัยทักษิณ',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Thaksin University',
                              style: TextStyle(color: Colors.grey),
                            )
                          ]),
                      Row(children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(' 4.5')
                      ])
                    ]),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height*0.4,
                  child: SingleChildScrollView(
                child: Text(
                    '  มหาวิทยาลัยทักษิณ เป็นสถาบันอุดมศึกษาแห่งแรกๆ ในพื้นที่ภาคใต้ ถือกำเนิดขึ้นภายหลังจากการสถาปนาวิทยาลัยวิชาการศึกษา (College of Education) ในสังกัดกระทรวงศึกษาธิการ ขึ้นแทนโรงเรียนฝึกหัดครูชั้นสูง ณ ถนนประสานมิตร อำเภอพระโขนง จังหวัดพระนคร ในปีพุทธศักราช 2497 เพื่อพัฒนาปรัชญาและแนวคิดทางด้านการศึกษาสมัยใหม่ให้สอดคล้องผสานสัมพันธ์กับสังคมประชาธิปไตย รวมทั้งการพัฒนาการศึกษาศาสตร์ให้เป็นวิชาชีพที่มีระบบแบบแผนและมีความลุ่มลึกในสังคมไทย พร้อมกับการประสาทปริญญาทางด้านศึกษาศาสตร์ วิทยาลัยวิชาการศึกษาได้พัฒนาและเจริญก้าวหน้ามาโดยลำดับ พร้อมกับการขยายการจัดการศึกษาไปยังภูมิภาคต่างๆ ของประเทศ และมีการบริหารงานแบบหลายวิทยาเขต ประกอบด้วย     วิทยาเขตปทุมวัน (ปีพุทธศักราช 2498) วิทยาเขตบางแสน จังหวัดชลบุรี (ปีพุทธศักราช 2498) วิทยาเขตพิษณุโลก (ปีพุทธศักราช 2510) วิทยาเขตมหาสารคาม (ปีพุทธศักราช 2511) วิทยาเขตสงขลา (ปีพุทธศักราช 2511) วิทยาเขตพระนคร  (ปีพุทธศักราช 2512) และวิทยาเขตพลศึกษา (ปีพุทธศักราช 2513) โดยมีวิทยาเขตประสานมิตรเป็นศูนย์กลางการบริหาร'),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
