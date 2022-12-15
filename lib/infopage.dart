import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class infopage extends StatefulWidget {
  late String animal;
  infopage({required this.animal});
    @override
    _infopage createState() => _infopage();

}
class _infopage extends State<infopage> {
  int indexof(String a)
  {
    if(a=="Deer")
      return 0;
    else if(a=="Elephant")
      return 1;
    else if(a=="Snake")
      return 2;
    else if(a=="Panda")
      return 3;
    else if(a=="Tiger")
      return 4;
    else if(a=="Leopard")
      return 5;
    else if(a=="Horse")
      return 6;
    else
      return 7;
  }
  String getlottie(String a)
  {
    if(a=="Deer")
      return "assets/lottie/61496-deer.json";
    else if(a=="Elephant")
      return "assets/lottie/64705-elephant.json";
    else if(a=="Snake")
      return "assets/lottie/snake-4897403-4073486.mp4.lottie.json";
    else if(a=="Panda")
      return "assets/lottie/106889-earkick-welcome-animation.json";
    else if(a=="Tiger")
      return "assets/lottie/87603-tiger.json";
    else if(a=="Leopard")
      return "assets/lottie/leopard-5752763-4798286.mp4.lottie.json";
    else if(a=="Horse")
      return "assets/lottie/82374-smiling-horse.json";
    else
      return "assets/lottie/63541-turtle.json";
  }
  late List<information> _data;
  @override
  Widget build(BuildContext context) {
    int i=indexof(widget.animal.substring(2));
    String s=getlottie(widget.animal.substring(2));
    _data= <information>[
      information(a: "🦌 Deer walk in groups called herds, they are social animals\n🦌 Some antlers grow during the spring season.\n🦌 Deers' eyes are on the side of the head.",
          b: "3-6 years.",
          c: "tropical african and asian forest.",
          d: "Some species of deer in list of endangered species like Chinese Water Deer , Roe Deer ,Blackbuck Deer etc."),
      information(a: "🐘 World’s Largest Land Animal\n🐘 The communicate through vibrations\n🐘 A baby elephant can stand within 20 minutes of birth.",
          b: "45-70 years.",
          c: "Though elephants are native to only Africa and Asia, they hold significant cultural and symbolic meaning around the world.",
          d: "With only 40,000-50,000 left in the wild, the species is classified as endangered."),
      information(a: "🐍 There are around 3,000 different species of snakes.\n🐍 Most snakes lay eggs, but some species – including sea snakes – give birth!\n🐍 Snakes smell with their tongue",
          b: "2-8 years in the wild.",
          c: "everywhere except in Antarctica, Iceland, Ireland, Greenland, and New Zealand.",
          d: "One-fifth of all snakes and other reptiles are threatened with extinction"),
      information(a: "🐼 pandas can swim and even climb trees\n🐼 bamboo is critical to their diet\n🐼 pandas have excellent camouflage for their habitat",
          b: "15-30 years",
          c: "Pandas live mainly in temperate forests high in the mountains of southwest China, where they subsist almost entirely on bamboo.",
          d: "vulnerable"),
      information(a: "🐯 INDIA IS THE COUNTRY WITH THE LARGEST NUMBER OF WILD TIGERS\n🐯 Silent Hunters - Tigers have soft toe pads which help them walk silently through their habitat.\n🐯 Tiger cubs are born blind and only half of the cubs survive",
          b: "8 - 10 years",
          c: "Currently, India has the largest tiger population in the world. ",
          d: "“Endangered”"),
      information(a: "🐆 Leopards are renowned for their agility - can run at up to 58km/h!\n🐆 Leopards are very solitary and spend most of their time alone.\n🐆 Nocturnal animals, leopards are active at night when they venture out in search for food",
          b: "12-17 years",
          c: "Africa, parts of the Middle East, and Asia, including China, India, and eastern Russia.",
          d: "Few sub species are endangered"),
      information(a: "🐴 Horses have 10 different muscles in their ears\n🐴 Horses have a nearly 360 degree field of vision\n🐴 The earliest ancestor of the horse is estimated to have lived 55 million years ago",
          b: "25- 30 years",
          c: " EVERYWHERE, US HAS MOST NUMBER OF HORSES ",
          d: "LEAST CONCERN"),
      information(a: "🐢 Sea turtles are deep divers and can stay underwater for long periods of time\n🐢 a turtle’s SHELL Is made up of over 50 bones which include the turtle’s rib cage and spine.\n🐢 These creatures date back to the time of the dinosaurs, over 200 million years ago",
          b: "upto 50 years",
          c: "southeastern North America and South Asia.",
          d: " endangered "),
    ];
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: Text(
        'Animal information',
        style: TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(
          color: Colors.white
              ),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
      body: SingleChildScrollView(
        child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.004, 1],
            colors: [
              Colors.teal,
            Colors.tealAccent,
              ],
          ),
          ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
                color: Colors.transparent,
                child: Lottie.asset(
                  s,
                  width: 200,
                  height: 200,
                  repeat: true,
                  fit: BoxFit.fill,
                ),
            ),
            SizedBox(height: 50,),
            Center(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),

                      ),
                      alignment: Alignment.center,
                      child: Text(widget.animal.substring(2),
                        softWrap:true,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.purpleAccent
                      ),),
                    ),
                  ),
            SizedBox(height: 25,),
            Center(
              child: Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
                alignment: Alignment.center,
                child: ExpansionTile(title:Text("FACTS: ",softWrap:true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.purpleAccent
                  ),
                ),
                children: [
                  Text(_data[i].a,softWrap:true,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.orangeAccent
                    ),),
                ],
                )
              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                  ),
                  alignment: Alignment.center,
                  child: ExpansionTile(title:Text("LIFESPAN: ",softWrap:true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.purpleAccent
                    ),
                  ),
                    children: [
                      Text(_data[i].b,softWrap:true,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.orangeAccent
                        ),),
                    ],
                  )
              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                  ),
                  alignment: Alignment.center,
                  child: ExpansionTile(title:Text("FOUND IN: ",softWrap:true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.purpleAccent
                    ),
                  ),
                    children: [
                      Text(_data[i].c,softWrap:true,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.orangeAccent
                        ),),
                    ],
                  )
              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                  ),
                  alignment: Alignment.center,
                  child: ExpansionTile(title:Text("CATEGORY OF CONSERVATION:",softWrap:true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.purpleAccent
                    ),
                  ),
                    children: [
                      Text(_data[i].d,softWrap:true,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.orangeAccent
                        ),),
                    ],
                  )
              ),
            ),
            SizedBox(height: 25,),
          ]
    )
        ),
      )
    );
  }

}
class information{
  late String a;
  late String b;
  late String c;
  late String d;
  information({required this.a,required this.b,required this.c,required this.d,});
}
