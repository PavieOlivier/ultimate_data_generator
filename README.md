![](https://www.emilecode.com/wp-content/uploads/2019/12/UDG.png)
# Ultimate Data Generator

Ultimate Data Generator (UDG) is the most complete offline data generator for prototyping using Flutter. It gives you access to a lot of data that does not just look like place holder text but actual real looking data!
By using this package, you will have access to diverse elements from basic data to a little bit more advanced one such as name, surnames, email, comments(classified by category), food names and ingredients used for them and so much more.

## Relevant link
[The online documentation](https://www.emilecode.com/ultimate-data-generator/ "link title")

[My instagram :P](https://www.instagram.com/emilecode/ "link title")

[The demo Apk](https://drive.google.com/file/d/17Hg2KtwUxi_1z82vz2UYkndsZYjcsig2/view?usp=sharing "link title")

## Quick usage
The ultimate data generator can generate datas from 6 different categories, to know more about them please read [The online documentation](https://www.emilecode.com/ultimate-data-generator/ "link title").
Image generation is also supported (as local path).
To use UDG you should first import the package then select the class you would like to use depending on what you want to generate (more in [The online documentation](https://www.emilecode.com/ultimate-data-generator/ "link title"). )

```
import'package:ultimate_data_generator/ultimate_data_generator.dart';
//rest of code
Container(
    color: Colors.pink,
    child:Image.asset(HumanGen.generateMaleImage(),fit: BoxFit.fill,),
)
```

## A Short gif showcasing the demo app
![](https://media.giphy.com/media/ehO4FPLQaK1SI991BT/giphy.gif)
## Usage and possible Limitations
Well as far as I am concerned, I did not find any bug during my tests.However, due to the nature of this package, I would strongly recomment to generate your data in the model before placing your widget inside a listView.builder

##### Not recommended 
generating data inside a list 
```
ListView.builder(
     itemCount: litems.length,
     itemBuilder: (BuildContext ctxt, int Index) {
	 return Container(
          color: Colors.pink,
          child:Image.asset(HumanGen.generateMaleImage(),fit: BoxFit.fill,),
     );
   }
 )
```
##### Recommended 
1) generate data from your model/ data manager
2) create a list and feed it with the widget created by your data manager

```
//Datamanager.dart
// user is a widget, lets say a xard
List<user> createUser (int number)
{
	 list<user> userList;
	 for(int i=0;i<number;i++)
	 {
	 	userList.add(
			user(
				name: HumanGen.generateAFullName(),
				email: HumanGen.generateEmailFromMostRecentName(),
				profilePicturePath: HumanGen.generateMaleImage(),
				age: HumanGen.generateMidAdultAge(useExtension = true),
				profession: IndustryGen.generateJobOccupation(),
				homeLocation:PlacesGen.generateLocalAddress(),
			)
		)
	 }
}
```

now that you have you data, you can feed it into the listview 
```
//Somewhere in your code
ListView.builder
(
     itemCount: userList.length,
     itemBuilder: (BuildContext ctxt, int Index) {
     return userList[index];
  }
)
```

### Conclusion
Thank you for using my package, feel free to contact me by mail or on [my instagram](https://www.instagram.com/emilecode/ "link title") if you have any issue,
I will be happy to help






For help getting started with Flutter, view The  
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
