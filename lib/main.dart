import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(""),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top placeholder for icons or banners
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(5, (index) => Icon(Icons.image, size: 50)),
              ),
              SizedBox(height: 20),
              // QR code and points section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    // QR Code Placeholder
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.black12,
                      child: Icon(Icons.qr_code, size: 40),
                    ),
                    SizedBox(width: 16),
                    // Points Display
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Бонусы", style: TextStyle(fontSize: 16)),
                        Text("0.00 баллов", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Popular products section
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Популярные товары", style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.grey[200],
                      child: Center(
                        child: Icon(Icons.shopping_bag, size: 40),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Уведомления"),
            BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR-код"),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: "История"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
          ],
        ),
      ),
    );
  }
}
