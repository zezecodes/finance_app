import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: width,
                  height: height * 0.25,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 113, 199, 185),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Column(children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    SizedBox(
                      width: width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Good Afternoon",
                                style: GoogleFonts.inter(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                "Aaron Djangmah",
                                style: GoogleFonts.inter(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Container(
                              width: width * 0.1,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  )))
                        ],
                      ),
                    ),
                  ]),
                ),
                Positioned(
                    top: height * 0.15,
                    left: width * 0.1,
                    child: Column(
                      children: [
                        Container(
                          width: width * 0.8,
                          height: height * 0.2,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 61, 129, 118),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: width * 0.7,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total Balance",
                                      style: GoogleFonts.inter(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                              ),
                              Text(
                                "2,400.00",
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 113, 199, 185),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.arrow_downward,
                                                  size: 15,
                                                  color: Colors.white,
                                                )),
                                          ),
                                          SizedBox(
                                            width: width * 0.01,
                                          ),
                                          Text(
                                            "Income",
                                            style: GoogleFonts.inter(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: width * 0.08),
                                        child: Text("1,400,000.00",
                                            style: GoogleFonts.inter(
                                                fontSize: 13,
                                                color: Colors.white)),
                                      )
                                    ],
                                  ),
                                  
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 113, 199, 185),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.arrow_upward,
                                                  size: 15,
                                                  color: Colors.white,
                                                )),
                                          ),
                                          SizedBox(
                                            width: width * 0.02,
                                          ),
                                          Text(
                                            "Expenses",
                                            style: GoogleFonts.inter(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: width * 0.08),
                                        child: Text(
                                          "1,249,000.00",
                                          style: GoogleFonts.inter(
                                              fontSize: 13, color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction History",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: width * 0.1),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style:
                            GoogleFonts.inter(color: Colors.grey, fontSize: 15),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
