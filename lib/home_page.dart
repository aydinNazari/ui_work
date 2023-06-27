import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar_homePage(size),
              storage_row(size),
              SizedBox(width: size.width, child: storge_view(size)),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width / 20,
                  top: size.height / 15,
                ),
                child: Text(
                  'Recently Updated',
                  style: TextStyle(
                    fontSize: size.width / 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              Row(
                children: [
                  ContainerGold(size, 'assets/icons/sketch.png'),
                  ContainerGold(size, 'assets/icons/sketch.png'),
                  ContainerGold(size, 'assets/icons/prd.png'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 18),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: size.width / 20),
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          fontSize: size.width / 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: size.width / 20),
                      child: Text(
                        'Creat new',
                        style: TextStyle(
                          color: const Color(
                            0xff167fe5,
                          ),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width / 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  CheckBox(size),
                  CheckBox(size),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding CheckBox(Size size) {
    return Padding(
                padding: EdgeInsets.only(
                  right: size.width / 20,
                  left: size.width / 20,
                  top: size.height / 50,
                ),
                child: Container(
                  width: size.width,
                  height: size.height / 12,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size.width / 20),
                        child: Icon(
                          Icons.folder,
                          size: size.width / 14,
                          color: Colors.blue.shade200,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width / 40),
                        child: Text(
                          'ChatBox',
                          style: TextStyle(fontSize: size.width / 25),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: size.width / 20),
                        child: Icon(
                          Icons.more_vert_rounded,
                          size: size.width / 14,
                          color: Colors.grey.shade500,
                        ),
                      ),

                    ],
                  ),
                ),
              );
  }

  Padding ContainerGold(Size size, String imgUrl) {
    return Padding(
      padding: EdgeInsets.only(left: size.width / 20, top: size.height / 50),
      child: Column(
        children: [
          Container(
            width: size.width / 3.9,
            height: size.width / 3.9,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(size.width / 11),
              child: Image.asset(imgUrl),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: size.height / 35,
            ),
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'desktop',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.grey.shade500,
                      fontSize: size.width / 25,
                    ),
                  ),
                  TextSpan(
                    text: ' Search',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500,
                      fontSize: size.width / 35,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding storge_view(Size size) {
    return Padding(
      padding: EdgeInsets.only(left: size.width / 20, top: size.height / 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width / 3.5,
                height: size.height / 200,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 200),
                child: Text(
                  'SOURCES',
                  style: TextStyle(
                    fontSize: size.width / 45,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: size.width / 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width / 4,
                height: size.height / 200,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 200),
                child: Text(
                  'DOCS',
                  style: TextStyle(
                    fontSize: size.width / 45,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: size.width / 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width / 6.5,
                height: size.height / 200,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 200),
                child: Text(
                  'IMAGES',
                  style: TextStyle(
                    fontSize: size.width / 43,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: size.width / 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width / 6.5,
                height: size.height / 200,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height / 200),
                child: Text(
                  'IMAGES',
                  style: TextStyle(
                    fontSize: size.width / 43,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding storage_row(Size size) {
    return Padding(
      padding: EdgeInsets.only(
        left: size.width / 20,
        top: size.width / 20,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Storage',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: size.width / 18,
                  ),
                ),
                TextSpan(
                  text: '  9.1/10 GB',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: size.width / 25,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
              right: size.width / 20,
            ),
            child: Text(
              'Upgrade',
              style: TextStyle(
                fontSize: size.width / 25,
                fontWeight: FontWeight.w600,
                color: const Color(
                  0xff167fe5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack appBar_homePage(Size size) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 4.4,
          decoration: BoxDecoration(
            color: Colors.blue.shade800,
          ),
        ),
        Positioned(
          left: size.width / 10,
          top: size.height / 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Riotters',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width / 15,
                ),
              ),
              Text(
                textAlign: TextAlign.start,
                'Team Folder',
                style: TextStyle(
                  fontSize: size.width / 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: size.width / 10,
          top: size.height / 12,
          child: Row(
            children: [
              Container(
                width: size.width / 9,
                height: size.width / 9,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: size.width / 30,
              ),
              Container(
                width: size.width / 9,
                height: size.width / 9,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
