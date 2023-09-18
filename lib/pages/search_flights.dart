import 'package:flutter/material.dart';

class SearchFlights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF190E43), Color(0xFF350D53), Color(0xFF2E0B4B)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 393,
                height: 852,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 831,
                          child: Container(
                            width: 393,
                            height: 21,
                            padding: const EdgeInsets.symmetric(horizontal: 127),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Transform(
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                                  child: Container(
                                    width: 139,
                                    height: 5,
                                    decoration: ShapeDecoration(
                                      color: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 3,
                          top: 0,
                          child: Container(
                            width: 390,
                            height: 47,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 54,
                                  height: 21,
                                  padding: const EdgeInsets.only(top: 1),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 54,
                                        height: 20,
                                        child: Text(
                                          '9:41',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontFamily: 'SF Pro Text',
                                            fontWeight: FontWeight.w600,
                                            height: 0.08,
                                            letterSpacing: -0.41,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 77.40,
                                  height: 13,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 50,
                                        top: 0,
                                        child: Container(
                                          width: 27.40,
                                          height: 13,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [

                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 26,
                                        top: 1,
                                        child: Container(
                                          width: 17,
                                          height: 11.83,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/17x12"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 44,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 44,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 144),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 11),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              '􀆉',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF8E9FC9),
                                                fontSize: 17,
                                                fontFamily: 'SF Pro',
                                                fontWeight: FontWeight.w500,
                                                height: 0.08,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 111),
                                      Container(
                                        height: double.infinity,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'YUL to NRT',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontFamily: 'SF Pro',
                                                fontWeight: FontWeight.w500,
                                                height: 0.08,
                                              ),
                                            ),
                                            Text(
                                              'DEC 13, 2023 4 Pax',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF8E9FC9),
                                                fontSize: 12,
                                                fontFamily: 'SF Pro',
                                                fontWeight: FontWeight.w400,
                                                height: 0.11,
                                                letterSpacing: -0.40,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 377,
                height: 365.50,
                child: Stack(
                  children: [
                    Positioned(
                      left: 11,
                      top: 61,
                      child: Container(
                        width: 354,
                        height: 120,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 74,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors: [Color(0xFF6D41CE), Color(0xFF8D20C2)],
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 50,
                                    offset: Offset(0, 20),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 74,
                                      height: 120,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 8,
                                            strokeAlign: BorderSide.strokeAlignCenter,
                                            color: Color(0xFF477EE8),
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 25,
                                    top: 7,
                                    child: Text(
                                      'CA',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 60,
                                    child: Text(
                                      '\$934',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 88,
                                    child: SizedBox(
                                      width: 52,
                                      height: 27,
                                      child: Text(
                                        'Current Lowest Price',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 74,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors: [Color(0xFF624FBB), Color(0xFF200F3B)],
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 50,
                                    offset: Offset(0, 20),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 25,
                                    top: 7,
                                    child: Text(
                                      'CA',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 60,
                                    child: Text(
                                      '\$934',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 88,
                                    child: SizedBox(
                                      width: 52,
                                      height: 27,
                                      child: Text(
                                        'Current Lowest Price',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 74,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors: [Color(0xFF624FBB), Color(0xFF200F3B)],
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 50,
                                    offset: Offset(0, 20),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 25,
                                    top: 7,
                                    child: Text(
                                      'CA',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 60,
                                    child: Text(
                                      '\$934',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 88,
                                    child: SizedBox(
                                      width: 52,
                                      height: 27,
                                      child: Text(
                                        'Current Lowest Price',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 74,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors: [Color(0xFF624FBB), Color(0xFF200F3B)],
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 50,
                                    offset: Offset(0, 20),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 25,
                                    top: 7,
                                    child: Text(
                                      'CA',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    top: 60,
                                    child: Text(
                                      '\$934',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 11,
                                    top: 88,
                                    child: SizedBox(
                                      width: 52,
                                      height: 27,
                                      child: Text(
                                        'Current Lowest Price',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
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
                      left: 316,
                      top: 257,
                      child: Container(
                        width: 51,
                        height: 32,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 51,
                                height: 32,
                                decoration: ShapeDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(1.00, 0.00),
                                    end: Alignment(-1, 0),
                                    colors: [Colors.white, Colors.black],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 11,
                      top: 262,
                      child: SizedBox(
                        width: 116,
                        child: Text(
                          'Monitor prices',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w500,
                            height: 0.08,
                            letterSpacing: -0.40,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 91,
                      top: 16,
                      child: SizedBox(
                        width: 196,
                        child: Text(
                          'Price Tracking',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                            letterSpacing: -0.40,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 92,
                      top: 198,
                      child: SizedBox(
                        width: 269,
                        child: Text(
                          'Simply keep an eye on price and we’ll collect data for the search.',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF8E9FC9),
                            fontSize: 16,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                            letterSpacing: -0.40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 181,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Select Your Departure',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w700,
                                height: 0.08,
                                letterSpacing: -0.40,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 2,
                            top: 22,
                            child: Text(
                              'Prices May Change Until Purchase',
                              style: TextStyle(
                                color: Color(0x99EBEBF5),
                                fontSize: 12,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w700,
                                height: 0.15,
                                letterSpacing: -0.40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [Color(0xFF2E1466), Color(0xFF5C2964)],
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x338671EC)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4C000000),
                            blurRadius: 20,
                            offset: Offset(0, 20),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 165,
                            height: 119,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(color: Color(0xE55C2964)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 104,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CA \$950',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                      Text(
                                        'Roundtrip per passenger',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 22),
                                Container(
                                  height: 40.80,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/24x24"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Air Canada',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 188,
                            height: 119,
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1:15 AM - 9:20AM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                      const SizedBox(height: 13),
                                      Text(
                                        'Montreal (YUL) - Tokyo (NRT)',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.6000000238418579),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                      const SizedBox(height: 13),
                                      Text(
                                        '13:35 Hours Non-Stop',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.6000000238418579),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [Color(0xFF2E1466), Color(0xFF5C2964)],
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x338671EC)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4C000000),
                            blurRadius: 20,
                            offset: Offset(0, 20),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.90,
                            child: Container(
                              width: 165,
                              height: 119,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(color: Color(0xFF5C2964)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 104,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'CA \$950',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: -0.40,
                                          ),
                                        ),
                                        Text(
                                          'Roundtrip per passenger',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: -0.40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 22),
                                  Container(
                                    height: 40.80,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/24x24"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Air Canada',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: -0.40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 188,
                            height: 119,
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1:15 AM - 9:20AM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                      const SizedBox(height: 13),
                                      Text(
                                        'Montreal (YUL) - Tokyo (NRT)',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.6000000238418579),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                      const SizedBox(height: 13),
                                      Text(
                                        '13:35 Hours Non-Stop',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.6000000238418579),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [Color(0xFF2E1466), Color(0xFF5C2964)],
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0x338671EC)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4C000000),
                            blurRadius: 20,
                            offset: Offset(0, 20),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Opacity(
                            opacity: 0.90,
                            child: Container(
                              width: 165,
                              height: 119,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(color: Color(0xFF5C2964)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 104,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'CA \$950',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: -0.40,
                                          ),
                                        ),
                                        Text(
                                          'Roundtrip per passenger',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontSize: 12,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: -0.40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 22),
                                  Container(
                                    height: 40.80,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage("https://via.placeholder.com/24x24"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          'Air Canada',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontFamily: 'SF Pro',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: -0.40,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 188,
                            height: 119,
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1:15 AM - 9:20AM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                      const SizedBox(height: 13),
                                      Text(
                                        'Montreal (YUL) - Tokyo (NRT)',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.6000000238418579),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                      const SizedBox(height: 13),
                                      Text(
                                        '13:35 Hours Non-Stop',
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.6000000238418579),
                                          fontSize: 12,
                                          fontFamily: 'SF Pro',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 117,
                height: 34,
                decoration: ShapeDecoration(
                  color: Color(0xFF8E9FC9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}