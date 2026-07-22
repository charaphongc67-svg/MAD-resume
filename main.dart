import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // สีพื้นหลังหน้าจอ
      appBar: AppBar(
        title: const Text('My Portfolio'),
        backgroundColor: const Color.fromARGB(255, 218, 32, 32),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView( // ช่วยให้หน้าจอเลื่อนได้ถ้าเนื้อหายาวเกิน
        child: Center(
          child: Column(
            children: [
              //  ส่วนรูปโปรไฟล์และชื่อ
              const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 240, 12, 12),
                  child: Icon(Icons.person, size: 50, color: Colors.white), // ไอคอนแทนรูป
                ),
              ),
              const Text(
                'นาย ชรพงษ์ ช้ำกล่ำ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Student',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              // กล่อง Container แนะนำตัว 
              Container(
                width: 350.0,
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ประวัติการศึกษา (ม.ต้น - มหาวิทยาลัย)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10), // เว้นระยะห่างบรรทัด
                    Text(
                      'มัธยมศึกษา ตอนต้น ร.ร.หางไหล',
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ),
                    Text(
                      'มัธยมศึกษา ตอนปลาย ร.ร.เตรียมอุดมศึกา ภาคเหนือ',
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ),
                    Text(
                      'มหาวิทยาลัย นเรศวร',
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ),
                  ],
                ),
              ),
              

              //  กล่องแสดง
              Container(
                width: 350.0,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 247, 253),
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: const Color.fromARGB(255, 6, 6, 6), width: 1.5),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ประสบการณ์งาน โครงงานที่เคยทำ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('• ฝึกงานโรงพยาบาลพุทธชินาราช ทำหน้าที่เช็คและจัดยาให้แผนกต่างๆ'),
                    Text('• ทำพาสทาม ร้านอาหาร2ที่ 1.แวะก่อนคาเฟ่ ที่ พิษณุโลก 2. ร้านลาบลับ ลับ ในกรุงเทพ'),
                    
                    
                  ],
                ),
              ),
               Container(
                width: 300.0,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[50],
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.deepPurple.shade200, width: 1.5),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ความสารมพิเศษ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('• วาดภาพเหมือน'),
                    Text('• เขียนนิยาย'),
                    Text('• coding'),
                    
                  ],
                ),
              ),
              const SizedBox(height: 30), 
            ],
            
          ),
        ),
      ),
    );
  }
}