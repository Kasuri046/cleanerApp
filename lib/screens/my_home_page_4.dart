import 'package:flutter/material.dart';

class MyHomePage4 extends StatefulWidget {
  const MyHomePage4({super.key});

  @override
  State<MyHomePage4> createState() => _MyHomePage4State();
}

class _MyHomePage4State extends State<MyHomePage4> {

  List<bool> isChecked = List.generate(8, (index) => false);
  bool isJkJunkChecked = false; // Separate state for Jk Junk

  final List<String> vname = [
    'Residual junk',
    'Residual junk',
    'Residual junk',
    'Residual junk',
    'Residual junk',
    'Residual junk',
    'Residual junk',
    'Residual junk'
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              size: 30,
              color: Color.fromRGBO(175, 107, 255, 1),
            ),
            SizedBox(
              width: screenWidth > 700 ? screenWidth * 0.45 : screenWidth * 0.30,
            ),
            Text(
              "Cleaner",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color.fromRGBO(148, 58, 251, 1),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: screenWidth > 700
                  ? screenHeight * 0.25
                  : screenHeight * 0.24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(246, 239, 255, 1),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Container(
                      height: screenWidth > 700 ? 150 : 140,
                      width: screenWidth > 700 ? 150 : 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SizedBox(
                          height: screenWidth > 700 ? 150 : 140,
                          width: screenWidth > 700 ? 150 : 140,
                          child: const CircularProgressIndicator(
                            color: Color.fromRGBO(175, 107, 255, 1),
                            backgroundColor: Color.fromRGBO(246, 239, 255, 1),
                            value: 1,
                            strokeWidth: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: screenWidth > 700 ? 40 : 45),
                      child: Text(
                        'COMPLETE',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(148, 58, 254, 1),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: screenWidth > 700 ? 0.50 : 0.10),
                      child: Text(
                        '50 KB',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Color.fromRGBO(148, 58, 254, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 10, top: 4, bottom: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.circular(10),
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/screentwo.png', width: 40),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Ad Junk',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Color.fromRGBO(148, 58, 254, 1)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '0.00 KB',
                    style: TextStyle(color: Color.fromRGBO(148, 58, 254, 1)),
                  ),
                  Checkbox(
                    value: isJkJunkChecked,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isJkJunkChecked = value ?? false;
                      });
                    },
                    activeColor: Color.fromRGBO(148, 58, 254, 1),
                    checkColor: Colors.white,
                    side: const BorderSide(
                        width: 2, color: Color.fromRGBO(148, 58, 254, 1)),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: screenHeight * 0.45,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  bool isFirstRow = index == 0;
                  bool isSecondRow = index == 1;

                  return Card(
                    margin: EdgeInsets.zero,
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, top: isFirstRow ? 4 : 2, bottom: isFirstRow ? 4 : 2),
                      width: double.infinity,
                      height: isFirstRow ? 60 : 40, // Further reduced height
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: isFirstRow
                            ? const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )
                            : BorderRadius.zero,
                        border: Border(
                          top: isSecondRow ? BorderSide.none : BorderSide(color: Colors.black12),
                          left: BorderSide(color: Colors.black12),
                          right: BorderSide(color: Colors.black12),
                          bottom: isFirstRow ? BorderSide.none : BorderSide(color: Colors.black12),
                        ),
                      ),
                      child: Row(
                        children: [
                          if (isFirstRow)
                            Image.asset('assets/images/screentwo.png', width: 30), // Further reduced image width
                          if (isFirstRow) SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              vname[index],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color.fromRGBO(148, 58, 254, 1),
                                fontSize: isFirstRow ? 16 : 14, // Increased font size for first row
                                fontWeight: isFirstRow ? FontWeight.bold : FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '15.00 KB',
                            style: TextStyle(
                              color: Color.fromRGBO(148, 58, 254, 1),
                              fontSize: isFirstRow ? 16 : 14, // Increased font size for first row
                              fontWeight: isFirstRow ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                          Checkbox(
                            value: isChecked[index],
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked[index] = value ?? false;
                              });
                            },
                            activeColor: Color.fromRGBO(148, 58, 254, 1),
                            checkColor: Colors.white,
                            side: const BorderSide(
                                width: 2, color: Color.fromRGBO(148, 58, 254, 1)),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Adjusted to maintain spacing
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage4()),
                );
              },
              child: Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(175, 107, 255, 1),
                  boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(175, 107, 255, 1),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Center(
                  child: Text(
                    "Clean Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
