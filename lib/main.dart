import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BigBlue());
}

class BigBlue extends StatelessWidget {
  const BigBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'/',
      routes:  {
        '/': (context)=> Home(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blue[800],
        centerTitle:true,
        title: Text('Big Blue',
        style: TextStyle(
          fontFamily: GoogleFonts.poppins().fontFamily,
          letterSpacing: 3,
          fontWeight: FontWeight.w900, fontSize: 34,
          color: Colors.white
        ),),
      ),
      backgroundColor: Colors.blue[800],
      body: Container(
        //big Container
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Groceries',style:GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 34,
              color: Colors.black,
              letterSpacing: 3,
            )),
            SizedBox(height: 15,),
            // Search Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 275,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Colors.grey[200],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,

                    ),
                  ),
                ),
                Stack(
                  children: [
                    Icon(Icons.shopping_cart_outlined,
                      color: Colors.black,
                    size: 34,),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                          shape: BoxShape.circle,)
                      ),)
                  ]
                ),
              ]
            ),
            SizedBox(height: 20,),
            Text('Popular',style:GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,letterSpacing: 2,
              color: Colors.black,)),
            SizedBox(height: 15,),
            // GridView
            Expanded(
              child: SizedBox(
                height: 500,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/banana.png',
                                  fit: BoxFit.cover,width: 90,
                                  height: 90,),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Banana",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  letterSpacing: 2,
                                  color: Colors.black,
                                ),),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("2.67"
                                    ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                        letterSpacing: 2,
                                        color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/orange.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("orange",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("4.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/apple.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Apple",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("1.99"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/watermelon.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("watermelon",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("8.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/strawberry.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("strawberry",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("4.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/banana.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Banana",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("2.67"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/orange.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("orange",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("4.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/apple.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Apple",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("1.99"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/watermelon.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("watermelon",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("8.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/strawberry.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("strawberry",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("4.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/banana.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Banana",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("2.67"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/orange.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("orange",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("4.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/apple.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Apple",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("1.99"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/watermelon.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("watermelon",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("8.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/strawberry.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("strawberry",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("4.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/banana.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Banana",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("2.67"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/orange.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("orange",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("4.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/apple.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("Apple",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("1.99"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/watermelon.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("watermelon",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("8.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,top: 8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Image.asset('assets/img/strawberry.png',
                                    fit: BoxFit.cover,width: 90,
                                    height: 90,),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("strawberry",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    letterSpacing: 2,
                                    color: Colors.black,
                                  ),),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text("4.79"
                                        ,style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                          color: Colors.black,
                                        )),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Container(
                                        height: 28,
                                        width: 28,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(Icons.add,
                                          color: Colors.white,)),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ]
                            ),),
            )
          ]
        ),
      ),
    );
  }
}


