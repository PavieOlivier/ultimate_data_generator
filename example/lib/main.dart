import 'package:flutter/material.dart';
import 'package:ultimate_data_generator/ultimate_data_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ultimate data generator\nUDG'),
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
    //his is rought and does not support landscape mode nor safe area
    double hbloc = MediaQuery.of(context).size.width / 100;
    double vbloc = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    'I will only showcase 3 methods per class\nfor time sake  :)\nInstagram: emilecode',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                CardElement(
                  textColor: Colors.orange,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'General purpose category (gen class)',
                  methodName: 'generatePercentage() → int:',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generatePercentage()', detailString: Gen.generatePercentage().toString(),)));
                  },
                ),
                CardElement(
                  textColor: Colors.orange,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'General purpose category (gen class)',
                  methodName: 'generateNumberinRange({@required int a, int b}) → Int:',
                  onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateNumberinRange\n({int 9, int 100})', detailString: Gen.generateNumberInRange(a: 9,b: 100).toString(),)));
                  },
                ),
                CardElement(
                  textColor: Colors.orange,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'General purpose category (gen class)',
                  methodName: 'generateRating() → int:',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateRating()', detailString: Gen.generateRating().toString(),)));

                  },
                ),
                CardElement(
                  textColor: Colors.blue,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The SocialMediaGen class',
                  methodName: 'generateRandomComment() → String:',
                  onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateRandomComment()', detailString: SocialMediaGen.generateRandomComment(),)));

                  },
                ),
                CardElement(
                  textColor: Colors.blue,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The SocialMediaGen class',
                  methodName: 'generateABio() → String:',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateABio()', detailString: SocialMediaGen.generateABio(),)));
                  },
                ),
                CardElement(
                  textColor: Colors.blue,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The SocialMediaGen class',
                  methodName: 'generateHotelReview() → String:',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateHotelReview()', detailString: SocialMediaGen.generateHotelReview(),)));
                  },
                ),
                CardElement(
                  textColor: Colors.deepPurpleAccent,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The PlacesGen class',
                  methodName: 'generateLocalAddress() → String:',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateLocalAddress()', detailString: PlacesGen.generateLocalAddress(),)));
                  },
                ),
                CardElement(
                  textColor: Colors.deepPurpleAccent,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The PlacesGen class',
                  methodName: 'generateAnHospitallName() → String:',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateAnHospitallName()', detailString: PlacesGen.generateAnHospitallName(),)));
                  },
                ),
                CardElement(
                  textColor: Colors.deepPurpleAccent,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The PlacesGen class',
                  methodName: 'generateSchoolName() → String:',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateSchoolName()', detailString: PlacesGen.generateSchoolName(),)));
                  },
                ),
                CardElement(
                  textColor: Colors.red,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The HumanGen class',
                  methodName: 'generateAGirlFirstName() → String:',
                  onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateAGirlFirstName()', detailString: HumanGen.generateAGirlFirstName(),)));

                  },
                ),
                CardElement(
                  textColor: Colors.red,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The HumanGen class',
                  methodName: 'generateRandomEmail() → String:',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateRandomEmail()', detailString: HumanGen.generateRandomEmail(),)));

                  },
                ),
                CardElement(
                  textColor: Colors.red,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The HumanGen class',
                  methodName:
                      'generatePhoneNumber({int length, int startingwith, bool shallFormat, int countryCode}) → String:',
                  onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generatePhoneNumber\ncountry code is false', detailString: HumanGen.generatePhoneNumber(),)));

                  },
                ),
                CardElement(
                  textColor: Colors.pink,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The IndustryGen class',
                  methodName: 'generateCarBrandName() → String:',
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateCarBrandName()', detailString: IndustryGen.generateCarBrandName(),)));

                  },
                ),
                CardElement(
                  textColor: Colors.pink,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The IndustryGen class',
                  methodName: 'generateJobOccupation() → String:',
                  onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateJobOccupation()', detailString: IndustryGen.generateJobOccupation(),)));

                  },
                ),
                CardElement(
                  textColor: Colors.pink,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The IndustryGen class',
                  methodName: 'generateTechCompanyName() → String:',
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage( methodName: 'generateTechCompanyName()', detailString: IndustryGen.generateTechCompanyName(),)));

                  },
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Now "some" images :) ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),

                CardElement(
                  textColor: Colors.amber,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The HummanGen class',
                  methodName: 'generateTeenMaleImage()',
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage2( methodName: 'generateTeenMaleImage()', detailString: HumanGen.generateTeenMaleImage(),)));

                  },
                ),

                CardElement(
                  textColor: Colors.amber,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The HummanGen class',
                  methodName: 'generateAdultFemaleImage()',
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage2( methodName: 'generateAdultFemaleImage()', detailString: HumanGen.generateAdultFemaleImage(),)));

                  },
                ),

                CardElement(
                  textColor: Colors.amber,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The FoodGen class',
                  methodName: 'generateNonVegImage()',
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage2( methodName: 'generateNonVegImage()', detailString: FoodGen.generateNonVegImage(),)));

                  },
                ),

                CardElement(
                  textColor: Colors.amber,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: ' The FoodGen class',
                  methodName: 'generateVegetarianlmage()',
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage2( methodName: 'generateVegetarianImage()', detailString: FoodGen.generateVegetarianImage(),)));

                  },
                ),

                CardElement(
                  textColor: Colors.amber,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The PlacesGen class',
                  methodName: 'generateHomeImage()',
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage2( methodName: 'generateHomeImage()', detailString: PlacesGen.generateHomeImage(),)));

                  },
                ),

                CardElement(
                  textColor: Colors.amber,
                  hbloc: hbloc,
                  vbloc: vbloc,
                  categoryName: 'The PlacesGen class',
                  methodName: 'generateHotelImage()',
                  onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage2( methodName: 'generateHotelImage()', detailString: PlacesGen.generateHotelImage(),)));

                  },
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Please for the foodGen methods other than images, refer the manual, due to lack of time i cannot continue to code this one application :(',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DetailPage extends StatefulWidget {

  final String detailString , methodName;

  const DetailPage({Key key, @required this.detailString, @required this.methodName}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.methodName,textAlign: TextAlign.center,),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.detailString),
        ),
      ),
    );
  }
}


class DetailPage2 extends StatefulWidget {

  final String detailString , methodName;

  const DetailPage2({Key key, @required this.detailString, @required this.methodName}) : super(key: key);
  @override
  _DetailPageState2 createState() => _DetailPageState2();
}

class _DetailPageState2 extends State<DetailPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.methodName,textAlign: TextAlign.center,),
      ),
      body: Center(
        child: Container(
          width: (MediaQuery.of(context).size.width/100)*90,
          height: (MediaQuery.of(context).size.height/100)*40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.detailString,),fit: BoxFit.contain
            )
          ),
          ),
          ),
        
      
    );
  }
}







class CardElement extends StatelessWidget {
  const CardElement(
      {Key key,
      @required this.hbloc,
      @required this.vbloc,
      @required this.categoryName,
      @required this.methodName,
      @required this.onTap,
      @required this.textColor})
      : super(key: key);

  final double hbloc;
  final double vbloc;
  final String categoryName;
  final String methodName;
  final Function onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 1.5,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: hbloc * 95,
          height: vbloc * 10,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
                  child: Text(categoryName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                ),
              ),
              Center(
                child: Text(
                  methodName,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
