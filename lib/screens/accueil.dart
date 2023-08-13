import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wepos/screens/navigation_drawer.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _YearPickerScreenState();
}

class _YearPickerScreenState extends State<Accueil> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String showYear = 'Select Year';
  String showMonth = 'Select Month';
  DateTime _selectedYear = DateTime.now();
  DateTime _selectedMonth = DateTime.now();
  List<SalesData> data = [
    SalesData('Jan', 35),
    SalesData('Feb', 10),
    SalesData('Mar', 4),
    SalesData('Apr', 12),
    SalesData('May', 40)
  ];

  selectYear(context) async {
    print("Calling date picker");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select Year"),
          content: SizedBox(
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(DateTime.now().year - 10, 1),
              // lastDate: DateTime.now(),
              lastDate: DateTime(2025),
              initialDate: DateTime.now(),
              selectedDate: _selectedYear,
              onChanged: (DateTime dateTime) {
                print(dateTime.year);
                setState(() {
                  _selectedYear = dateTime;
                  showYear = "${dateTime.year}";
                });
                Navigator.pop(context);
              },
            ),
          ),
        );
      },
    );
  }

  selectMonth(context) async {
    print("Calling date picker");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Select Month"),
          content: SizedBox(
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(DateTime.now().month, 1),
              // lastDate: DateTime.now(),
              lastDate: DateTime(2025),
              initialDate: DateTime.now(),
              selectedDate: _selectedMonth,
              onChanged: (DateTime dateTime) {
                print(dateTime.month);
                setState(() {
                  _selectedMonth = dateTime;
                  showMonth = "${dateTime.month}";
                });
                Navigator.pop(context);
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyNavigationDrawer(),
      backgroundColor: Color(0xFFF5F5F5),
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Container(
              //   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              //   alignment: Alignment.bottomCenter,
              //   height: 100,
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       colors: [Color(0xFFFACCBE), Color(0xFFFEE8DD)],
              //       begin: Alignment.topLeft,
              //       end: Alignment.bottomRight,
              //     ),
              //     borderRadius:
              //         BorderRadius.vertical(bottom: Radius.circular(20)),
              //   ),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Container(
              //         child: IconButton(
              //             icon: const Icon(Icons.menu), onPressed: () {}),
              //       ),
              //       Container(
              //         child: Image.asset(
              //           'assets/images/wePos_logo.png',
              //           height: 170,
              //           width: 120,
              //         ),
              //       ),
              //       Container(
              //         height: 90,
              //         width: 70,
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: AssetImage('assets/images/mainImage.png'),
              //             fit: BoxFit.cover,
              //           ),
              //           shape: BoxShape.circle,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              MyNavBar(),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              showYear,
                            ),
                            GestureDetector(
                              onTap: () {
                                selectYear(context);
                              },
                              child: const Icon(
                                Icons.calendar_month,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        width:
                            10), // Adjust the width as needed for the desired space
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              showYear,
                            ),
                            GestureDetector(
                              onTap: () {
                                selectYear(context);
                              },
                              child: const Icon(
                                Icons.calendar_month,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: IconButton(
                          icon: const Icon(Icons.search), onPressed: () {}),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Nombre de Clientes',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'LouisGeorgeCafe',
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Color(0xFF86044E)),
                    ),
                    Container(
                      child: IconButton(
                          icon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 148, 26, 79),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              SizedBox(
                height: 180,
                width: 380,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 120,
                        width: 390,
                        decoration: BoxDecoration(
                          // gradient: const LinearGradient(
                          //   colors: [Colors.pink, Colors.purple],
                          // ),
                          color: Color(0xFFFFF9F7),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 135, // Adjust the position of the container
                      right: 120, // Adjust the position of the container
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 30, // Adjust the height of the container
                        width: 100, // Adjust the width of the container
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "950 ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "(+175)",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF4EF),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),

                    // Text Elements with the same start (left) value

                    Positioned(
                      left: 220, // Adjust the position of the text
                      top: 45, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Totale: ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "950",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 220, // Adjust the position of the text
                      top: 70, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Les nouveaux ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "(+175)",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 220, // Adjust the position of the text
                      top: 120, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Femme: 730 ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "(+100)",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 220, // Adjust the position of the text
                      top: 95, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Homme:112 ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "(+10)",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    ///for percent indicator for gender
                    Positioned(
                      left: 20, // Adjust the position of the text
                      top: 65, // Adjust the position of the text
                      child: Center(
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5,
                          percent: 0.4,
                          progressColor: Colors.blue,
                          backgroundColor: Colors.white,
                          circularStrokeCap: CircularStrokeCap.round,
                          center: Icon(
                            Icons.man,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 90, // Adjust the position of the text
                      top: 65, // Adjust the position of the text
                      child: Center(
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5,
                          percent: 0.4,
                          progressColor: const Color.fromARGB(255, 186, 0, 62),
                          backgroundColor: Colors.white,
                          circularStrokeCap: CircularStrokeCap.round,
                          center: Icon(
                            Icons.man,
                            color: const Color.fromARGB(255, 186, 0, 62),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //chiffre D'affaires
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Chiffre D'affaires",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'LouisGeorgeCafe',
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Color(0xFF86044E)),
                    ),
                    Container(
                      child: IconButton(
                          icon: const Icon(
                            Icons.money,
                            color: Color.fromARGB(255, 148, 26, 79),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              SizedBox(
                height: 240, // Adjust the height of the SizedBox
                width: 380, // Adjust the width of the SizedBox
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 160, // Adjust the height of the Container
                        width: 390, // Adjust the width of the Container
                        decoration: BoxDecoration(
                          // gradient: const LinearGradient(
                          //   colors: [Colors.pink, Colors.purple],
                          // ),
                          color: Color(0xFFFFF9F7),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),

                    // use the positioned widget to place

                    Positioned(
                      bottom: 185, // Adjust the position of the container
                      right: 90, // Adjust the position of the container
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 30, // Adjust the height of the container
                        width: 200, // Adjust the width of the container
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "700 KDhs ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextSpan(
                                text: "(+30KDhs)",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF4EF),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),

                    ///for percent indicator for gender
                    Positioned(
                      left: 30, // Adjust the position of the text
                      top: 60, // Adjust the position of the text
                      child: Container(
                        height: 100,
                        width: 350,
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(),

                          // legend: Legend(
                          //   isVisible: true,
                          // ),
                          tooltipBehavior: TooltipBehavior(enable: true),
                          series: <ChartSeries<SalesData, String>>[
                            LineSeries<SalesData, String>(
                              dataSource: data,
                              xValueMapper: (SalesData sales, _) => sales.month,
                              yValueMapper: (SalesData sales, _) => sales.sales,
                              name: "Chiffre d'affaires",
                              dataLabelSettings:
                                  DataLabelSettings(isVisible: true),
                              color: Color(0xFF86044E),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 65, // Adjust the position of the text
                      top: 155, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Services: ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "100.000 DHS",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " (+50)",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 65, // Adjust the position of the text
                      top: 175, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Produits: ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "300.000 DHS",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " (+175)",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //bons d'achat
              //chiffre D'affaires
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Bons d'achats",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'LouisGeorgeCafe',
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Color(0xFF86044E)),
                    ),
                    Container(
                      child: IconButton(
                          icon: const Icon(
                            Icons.money,
                            color: Color.fromARGB(255, 148, 26, 79),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              SizedBox(
                height: 260, // Adjust the height of the SizedBox
                width: 380, // Adjust the width of the SizedBox
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 140, // Adjust the height of the Container
                        width: 390, // Adjust the width of the Container
                        decoration: BoxDecoration(
                          // gradient: const LinearGradient(
                          //   colors: [Colors.pink, Colors.purple],
                          // ),
                          color: const Color(0xFFFFF9F7),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),

                    // use the positioned widget to place

                    Positioned(
                      bottom: 185, // Adjust the position of the container
                      right: 90, // Adjust the position of the container
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 30, // Adjust the height of the container
                        width: 200, // Adjust the width of the container
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "          ",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "25 KDhs ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF4EF),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),

                    ///for percent indicator for gender

                    Positioned(
                      left: 65, // Adjust the position of the text
                      top: 95, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Nombre des bons d'achats: ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "100.000 DHS",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // TextSpan(
                              //   text: " (+50)",
                              //   style: TextStyle(
                              //     color: Colors.green,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 65, // Adjust the position of the text
                      top: 125, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Nombre des bons d'achats utilisés: ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "300.000 DHS",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Messages
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Messages",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'LouisGeorgeCafe',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xFF86044E)),
                    ),
                    Container(
                      child: IconButton(
                          icon: const Icon(
                            Icons.money,
                            color: Color.fromARGB(255, 148, 26, 79),
                          ),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 2,
              ),
              SizedBox(
                height: 260, // Adjust the height of the SizedBox
                width: 380, // Adjust the width of the SizedBox
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 140, // Adjust the height of the Container
                        width: 390, // Adjust the width of the Container
                        decoration: BoxDecoration(
                          // gradient: const LinearGradient(
                          //   colors: [Colors.pink, Colors.purple],
                          // ),
                          color: const Color(0xFFFFF9F7),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),

                    // use the positioned widget to place

                    Positioned(
                      bottom: 185, // Adjust the position of the container
                      right: 90, // Adjust the position of the container
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 30, // Adjust the height of the container
                        width: 200, // Adjust the width of the container
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "          ",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "2 KDhs ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFF4EF),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),

                    ///for percent indicator for gender

                    Positioned(
                      left: 65, // Adjust the position of the text
                      top: 115, // Adjust the position of the text
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.whatsapp,
                              size: 20.0,
                              color: Color(0xFF86044E),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Whatsapp : ",
                                    style: TextStyle(
                                      color: Color(0xFF880E4F),
                                      fontFamily: 'LouisGeorgeCafe',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "25000",
                                    style: TextStyle(
                                      color: Color(0xFF880E4F),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 235, // Adjust the position of the text
                      top: 115, // Adjust the position of the text
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.comments,
                              size: 20.0,
                              color: Color(0xFF86044E),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Sms : ",
                                    style: TextStyle(
                                      color: Color(0xFF880E4F),
                                      fontFamily: 'LouisGeorgeCafe',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "3500",
                                    style: TextStyle(
                                      color: Color(0xFF880E4F),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 65, // Adjust the position of the text
                      top: 150, // Adjust the position of the text
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.envelope,
                              size: 20.0,
                              color: Color(0xFF86044E),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Email : ",
                                    style: TextStyle(
                                      color: Color(0xFF880E4F),
                                      fontFamily: 'LouisGeorgeCafe',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "2000",
                                    style: TextStyle(
                                      color: Color(0xFF880E4F),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      left: 105, // Adjust the position of the text
                      top: 85, // Adjust the position of the text
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Totale de messages : ",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontFamily: 'LouisGeorgeCafe',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "4020",
                                style: TextStyle(
                                  color: Color(0xFF880E4F),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container MyNavBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      alignment: Alignment.bottomCenter,
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFACCBE), Color(0xFFFEE8DD)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                }),
          ),
          Container(
            child: Image.asset(
              'assets/images/wePos_logo.png',
              height: 170,
              width: 120,
            ),
          ),
          Container(
            height: 90,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mainImage.png'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}
