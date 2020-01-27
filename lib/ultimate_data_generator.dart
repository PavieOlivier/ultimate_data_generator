library ultimate_data_generator;

import 'package:ultimate_data_generator/lists/foodIndustry.dart';
import 'package:ultimate_data_generator/lists/socialMedia.dart';
import 'package:ultimate_data_generator/lists/environment.dart';
import 'package:ultimate_data_generator/lists/humandata.dart';
import 'package:ultimate_data_generator/lists/industry.dart';
import 'package:ultimate_data_generator/lists/places.dart';
import 'package:meta/meta.dart';
import 'dart:math';

enum PriceRange {
  /// 0.5 to 19.99
  verylow,

  ///20.0 to 49.00
  low,

  ///50 to 100
  medium,

  ///101 to 1000
  slightlyHigh,

  ///1001 to 10000
  high,

  ///10000 to 50000
  veryHigh,

  ///50000 to 100 000
  ultraHigh,

  ///30 000 to 150 000
  carRange,

  ///100 000 to 500 000
  homeRange,

  ///500 001 to 1 000 000
  premiumHome,

  ///1 000 000 to 100 000 000
  highPremiumHome
}

///Data generator classs for uncathegorised
///data
class Gen {
  ///This will generate a random number (integer) percentage
  static int generatePercentage() {
    return Random().nextInt(101);
  }

  ///This will generate a random number ( string ) percentage
  ///with the % sign attached to it
  static String generatePercentageString() {
    return Random().nextInt(101).toString() +'%';
  }

  ///This will generate a random number in range
  ///[a...b] b inclusive
  static int generateNumberInRange({@required int a,@required int b}) {
    return (a + Random().nextInt((b + 1)-a));
  }

  ///This will generate a job or an occupation
  static String generateJobOccupation() {
    return jobOrOccupation[Random().nextInt(jobOrOccupation.length)];
  }

  ///This will generate a random ID
  ///if the length is not specified, the generated ID will be of length 8.
  ///If a string is passed as custom start it will be added at the
  ///beginning of the generated iD
  static String generateID({int length, String customStart}) {
    String referenceCharacter =
        'qwertyyuiopasdfghjklzxcvbnm' + 'QWERTYUIOPLKJHGFDSAZXCVBNM';
    String id = '';
    int finalLength = length ?? 8;
    if (length == 0) {
      finalLength = 8;
    }
    for (int i = 0; i < finalLength; i++) {
      // shall we use a number ?
      int useNumber = Random().nextInt(2);
      //we will add a number
      if (useNumber == 0) {
        id = id + Random().nextInt(10).toString();
      }
      //we will add a letter
      else {
        id = id +
            referenceCharacter[Random().nextInt(referenceCharacter.length)];
      }
    }
    if (customStart != null) {
      return customStart + id;
    }
    return id;
  }

  ///Use this to generate the price of an item
  /// for this release we will use only $ (usd as a currency)
  /// by default the price range is set to medium
  static String generateAPrice({PriceRange priceRange = PriceRange.medium}) {
    if (priceRange == PriceRange.verylow) // 0.5 to 19.99
    {
      return '\$' +
          Random().nextInt(20).toString() +
          '.' +
          Random().nextInt(100).toString();
    } else if (priceRange == PriceRange.low) //20.0 to 49.00
    {
      return '\$' +
          (20 + Random().nextInt(30)).toString() +
          '.' +
          Random().nextInt(100).toString();
    } else if (priceRange == PriceRange.medium) // 50 to 100
    {
      return '\$' +
          (50 + Random().nextInt(51)).toString() +
          '.' +
          Random().nextInt(100).toString();
    } else if (priceRange == PriceRange.slightlyHigh) //101.00 to 1000
    {
      return '\$' +
          (101 + Random().nextInt(900)).toString() +
          '.' +
          Random().nextInt(100).toString();
    } else if (priceRange == PriceRange.high) //1001.0 to 10000
    {
      return '\$' + (1001 + Random().nextInt(9001)).toString();
    } else if (priceRange == PriceRange.veryHigh) //10000 to 50000
    {
      return '\$' + (10000 + Random().nextInt(40001)).toString();
    } else if (priceRange == PriceRange.ultraHigh) //50000 to 100 000
    {
      return '\$' + (50000 + Random().nextInt(50001)).toString();
    } else if (priceRange == PriceRange.homeRange) // 100 000 to 500 000
    {
      return '\$' + (100000 + Random().nextInt(400001)).toString();
    } else if (priceRange == PriceRange.premiumHome) // 500 001 to 1 000 000
    {
      return '\$' + (500000 + Random().nextInt(500001)).toString();
    } else if (priceRange ==
        PriceRange.highPremiumHome) //1 000 000 to 100 000 000
    {
      return '\$' + (1000000 + Random().nextInt(99000001)).toString();
    } else if (priceRange == PriceRange.carRange) // 30 000 to 150 000
    {
      return '\$' + (30000 + Random().nextInt(120001)).toString();
    } else {
      return '\$' +
          (50 + Random().nextInt(51)).toString() +
          '.' +
          Random().nextInt(100).toString();
    }
  }

  ///Use this to generate a duration string in the format
  ///..h...m ; in case you only need minutes, set the
  ///optional parameter to true 
  static String generateDuration({bool generateOnlyMinute = false}) {
    if(generateOnlyMinute == true)
    {
      return((1 + Random().nextInt(59)).toString()).toString() +' m';
    }
    else
    {
      return (1+Random().nextInt(23)).toString() +
        'h' +
        ((1 + Random().nextInt(59)).toString()).toString() +
        'm';
    }
  }

  ///Generate a string in the form
  /// ..:...am
  static String generateMorningTime() {
    return (1 + Random().nextInt(12)).toString() +
        ':' +
        ((1 + Random().nextInt(59)).toString()).toString() +
        'am';
  }

  ///Generate a string in the form
  /// ..:...pm
  static String generateAfternoonTime() {
    return (1 + Random().nextInt(12)).toString() +
        ':' +
        ((1 + Random().nextInt(59)).toString()).toString() +
        'pm';
  }

  ///Use this to generate a rating
  ///in the range o to 5 inclusive
  static int generateRating() {
    return Random().nextInt(6);
  }

  ///Generate a password
  static String generatePassword() {
    return nicknames[Random().nextInt(nicknames.length)] +
        (1 + Random().nextInt(30)).toString();
  }
}

///This will generate elements related to the industry sector
class IndustryGen {
  ///This will generate the name of a car brand
  static String generateCarBrandName() {
    return carBrand[Random().nextInt(carBrand.length)];
  }

  ///This will generate the name of a tech company
  static String generateTechCompanyName() {
    return technologyCompanies[Random().nextInt(technologyCompanies.length)];
  }

  /// This will generate a music genre among the common availiable music genre
  static String generateMusicGenre() {
    return musicGenre[Random().nextInt(musicGenre.length)];
  }

  /// this will give the name of one of the popular email provider
  /// out there
  static String generateEmailProviderName() {
    return emailProvider[Random().nextInt(emailProvider.length)];
  }

  ///This will generate a job or an occupation
  static String generateJobOccupation() {
    return jobOrOccupation[Random().nextInt(jobOrOccupation.length)];
  }

  ///This will generate a local Address
  static String generateLocalAddress() {
    return localAdresses[Random().nextInt(localAdresses.length)];
  }
}

///Will Generate eenvironmental datas such as
///country name and cities
class PlacesGen {
  ///Use this to generate a country name
  static String generateCountryName() {
    return countryName[Random().nextInt(countryName.length)];
  }

  ///Will Generate the name of a city or a town
  ///from either Canada,Usa,India,Congo,France
  static String generateCityOrTownName() {
    return worldCitiesOrTown[Random().nextInt(worldCitiesOrTown.length)];
  }

  ///Will Generate the name of a city or a town
  ///from  Canada
  static String generateCanadianCityOrTownName() {
    return canadianCitiesOrTown[Random().nextInt(canadianCitiesOrTown.length)];
  }

  ///Will Generate the name of a city or a town
  ///from  the United States
  static String generateUSACityOrTownName() {
    return unitedStateCitiesOrTown[
        Random().nextInt(unitedStateCitiesOrTown.length)];
  }

  ///Will Generate the name of a city along with it's corresponding state
  ///from  the United States
  static String generateUSACityAndState() {
    return usaCityAndState[Random().nextInt(usaCityAndState.length)];
  }

  ///Will Generate the name of a city along with it's corresponding state
  ///from Canada
  static String generateCanadianCityAndState() {
    return canadianCityAndState[Random().nextInt(canadianCityAndState.length)];
  }

  ///This will generate a local Address
  static String generateLocalAddress() {
    return localAdresses[Random().nextInt(localAdresses.length)];
  }

  ///This will generate an hotel name
  static String generateAnHotelName() {
    return hotelName[Random().nextInt(hotelName.length)];
  }

  ///This will generate an hospital name
  static String generateAnHospitallName() {
    return hospitalName[Random().nextInt(hospitalName.length)];
  }

  ///This will generate a mall name
  static String generateAMallName() {
    return mallName[Random().nextInt(mallName.length)];
  }

  ///This will generate a  school name
  static String generateSchoolName() {
    return schoolName[Random().nextInt(schoolName.length)];
  }

  ///This will generate a high school name
  static String generateHighSchoolName() {
    return highSchoolName[Random().nextInt(highSchoolName.length)];
  }

  ///This will generate a college or an university name
  static String generateCollegeAndUniversitiesName() {
    return collegeAndUniversitiesName[
        Random().nextInt(collegeAndUniversitiesName.length)];
  }

  ///This will generate the path to a local image
  ///of homes
  static String generateHomeImage() {
    return 'packages/ultimate_data_generator/images/homes/h${(1 + Random().nextInt(10)).toString()}.jpeg';
  }

  ///This will generate the path to a local image
  ///of hotels
  static String generateHotelImage() {
    return 'packages/ultimate_data_generator/images/hotels/h${(1 + Random().nextInt(10)).toString()}.jpeg';
  }
}

///use this class to generate relevent data
///on social media
class SocialMediaGen {
  ///this to generate the name of a social Media Platform
  static generateAPlatformName() {
    return socialMediaPlatform[Random().nextInt(socialMediaPlatform.length)];
  }

  ///This is to generate a profile description/bio
  static String generateABio() {
    return socialMediaProfileDBio[
        Random().nextInt(socialMediaProfileDBio.length)];
  }

  ///This will generate comment about music
  static String generateMusicComment() {
    return musicReviewComment[Random().nextInt(musicReviewComment.length)];
  }

  ///This will generate comment about car
  static String generateCarComment() {
    return carReviewComment[Random().nextInt(carReviewComment.length)];
  }

  ///This will generate an Hotel,resort comment/Review
  static String generateHotelReview() {
    return hotelReviewComment[Random().nextInt(hotelReviewComment.length)];
  }

  ///This will generate a food review comment
  static String generateRestaurantReview() {
    return foodReviewComment[Random().nextInt(foodReviewComment.length)];
  }

  ///This will generate a comment about tech
  static String generateTechComment() {
    return technologyComment[Random().nextInt(technologyComment.length)];
  }

  ///This will generate a comment about Fashion
  static String generateFashionComment() {
    return fashionComment[Random().nextInt(fashionComment.length)];
  }

  ///This will generate a random comment
  ///on any topic
  static String generateRandomComment() {
    randomComment.shuffle();
    return randomComment[Random().nextInt(randomComment.length)];
  }
}

///Use this to generate Vegan,Vegetarian as well as non Vegetarian
///food name along with the receipe and the ingredients that goes with it
class FoodGen {
  static int _veganStarterFoodIndex = 0;
  static int _veganMainMealFoodIndex = 0;
  static int _veganSnacksFoodIndex = 0;

  static int _vegetarianStarterFoodIndex = 0;
  static int _vegetarianMainCourseFoodIndex = 0;
  static int _vegetarianSnacksFoodIndex = 0;

  static int _nonVegetarianStarterFoodIndex = 0;
  static int _nonVegetarianMainCourseFoodIndex = 0;
  static int _nonVegetarianSnacksFoodIndex = 0;

  ///This will generate the name of a restaurant
  static String generateRestaurantName() {
    return restaurantName[Random().nextInt(restaurantName.length)];
  }

  ///this will generate the name of a vegan starter food
  static String generateVeganStarterFoodName() {
    _veganStarterFoodIndex = Random().nextInt(veganStarter.length);
    return veganStarter[_veganStarterFoodIndex];
  }

  ///This will give the descrption of the selected
  ///vegan starter food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVeganStarterFoodDescription() {
    return veganStarterDescription[_veganStarterFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///vegan starter food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVeganStarterFoodIngredient() {
    return veganStarterIngredient[_veganStarterFoodIndex];
  }

  ///this will generate the name of a vegan Main course food
  static String generateVeganMainMealFoodName() {
    _veganMainMealFoodIndex = Random().nextInt(veganMainMeal.length);
    return veganMainMeal[_veganMainMealFoodIndex];
  }

  ///This will give the descrption of the selected
  ///vegan Main course food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVeganMainMealFoodDescription() {
    return veganMainMealDescription[_veganMainMealFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///vegan Main course
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVeganMainMealFoodIngredient() {
    return veganMainMealIngredient[_veganMainMealFoodIndex];
  }

  ///this will generate the name of a vegan Snack food
  static String generateVeganSnacksFoodName() {
    _veganSnacksFoodIndex = Random().nextInt(veganSnacks.length);
    return veganSnacks[_veganSnacksFoodIndex];
  }

  ///This will give the descrption of the selected
  ///vegan snack
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVeganSnacksFoodDescription() {
    return veganSnacksDescription[_veganSnacksFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///vegan snack
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVeganSnacksFoodIngredient() {
    return veganSnacksIngredient[_veganSnacksFoodIndex];
  }

  ///this will generate the name of a vegetarian starter food
  static String generateVegetarianStarterFoodName() {
    _vegetarianStarterFoodIndex = Random().nextInt(vegetarianStarter.length);
    return vegetarianStarter[_vegetarianStarterFoodIndex];
  }

  ///This will give the descrption of the selected
  ///vegetarian starter food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVegetarianStarterFoodDescription() {
    return vegetarianStarterDescription[_vegetarianStarterFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///vegetarian starter food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVegetarianStarterFoodIngredient() {
    return vegetarianStarterIngredients[_vegetarianStarterFoodIndex];
  }

  ///this will generate the name of a vegetarian Main course food
  static String generateVegetarianMainMealFoodName() {
    _vegetarianMainCourseFoodIndex =
        Random().nextInt(vegetarianMainMeal.length);
    return vegetarianMainMeal[_vegetarianMainCourseFoodIndex];
  }

  ///This will give the descrption of the selected
  ///vegetarian Main course food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVegetarianMainMealFoodDescription() {
    return vegetarianMainMealDescription[_vegetarianMainCourseFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///vegetarian Main course
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentVegetarianMainMealFoodIngredient() {
    return vegetarianMainMealIngredient[_vegetarianMainCourseFoodIndex];
  }

  ///this will generate the name of a vegetarian Snack food
  static String generateVegetarianSnacksFoodName() {
    _vegetarianSnacksFoodIndex = Random().nextInt(vegetarianSnacks.length);
    return vegetarianSnacks[_vegetarianSnacksFoodIndex];
  }

  ///This will give the descrption of the selected
  ///vegetarian snack
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentvegetarianSnacksFoodDescription() {
    return vegetarianSnacksDescription[_vegetarianSnacksFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///vegetarian snack
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentvegetarianSnacksFoodIngredient() {
    return vegetarianSnacksIngredients[_vegetarianSnacksFoodIndex];
  }

  ///this will generate the name of a nonVegetarian starter food
  static String generateNonVegetarianStarterFoodName() {
    _nonVegetarianStarterFoodIndex =
        Random().nextInt(nonVegetarianStarter.length);
    return nonVegetarianStarter[_nonVegetarianStarterFoodIndex];
  }

  ///This will give the descrption of the selected
  ///nonVegetarian starter food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentNonVegetarianStarterFoodDescription() {
    return nonVegetarianStarterDescription[_nonVegetarianStarterFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///nonVegetarian starter food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentNonVegetarianStarterFoodIngredient() {
    return nonVegetarianStarterIngredients[_nonVegetarianStarterFoodIndex];
  }

  ///this will generate the name of a vegetarian Main course food
  static String generateNonVegetarianMainMealFoodName() {
    _nonVegetarianMainCourseFoodIndex =
        Random().nextInt(nonVegetarianMainMeal.length);
    return nonVegetarianMainMeal[_nonVegetarianMainCourseFoodIndex];
  }

  ///This will give the descrption of the selected
  ///nonVegetarian Main course food
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentNonVegetarianMainMealFoodDescription() {
    return nonVegetarianMainMealDescription[_nonVegetarianMainCourseFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///nonVegetarian Main course
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentNonVegetarianMainMealFoodIngredient() {
    return nonVegetarianMainMealIngredients[_nonVegetarianMainCourseFoodIndex];
  }

  ///this will generate the name of a nonVegetarian Snack food
  static String generateNonVegetarianSnacksFoodName() {
    _nonVegetarianSnacksFoodIndex =
        Random().nextInt(nonVegetarianSnacks.length);
    return nonVegetarianSnacks[_nonVegetarianSnacksFoodIndex];
  }

  ///This will give the descrption of the selected
  ///nonVegetarian snack
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentNonVegetarianSnacksFoodDescription() {
    return nonVegetarianSnacksDescription[_nonVegetarianSnacksFoodIndex];
  }

  ///This will give the ingredients of the selected
  ///nonVegetarian snack
  ///[WARNING] shall be used 'AFTER' generating the food name and not before
  static String currentNonVegetarianSnacksFoodIngredient() {
    return nonVegetarianSnacksIngredients[_nonVegetarianSnacksFoodIndex];
  }

  ///Use this to generate the path to a local
  ///vegan food
  static String generateVeganImage() {
    return 'packages/ultimate_data_generator/images/veganfood/v${(1 + Random().nextInt(10)).toString()}.jpg';
  }

  ///Use this to generate the path to a local
  ///vegetarian food
  static String generateVegetarianImage() {
    return 'packages/ultimate_data_generator/images/veganfood/v${(1 + Random().nextInt(10)).toString()}.jpg';
  }

  ///Use this to generate the path to a local
  ///Non vegetarian food
  static String generateNonVegImage() {
    return 'packages/ultimate_data_generator/images/nonveg/p${(1 + Random().nextInt(10)).toString()}.jpg';
  }
}

///This class will generate data info
///for human being
class HumanGen {
  static String _mostRecentlyGeneratedName = '';

  ///this method will return the name and surname of
  ///a boy or a girl
  static String generateAFullName() {
    _mostRecentlyGeneratedName = fullName[Random().nextInt(fullName.length)];
    return _mostRecentlyGeneratedName;
  }

  ///this method will return a surname
  /// this is common for a boy and  a girl
  static String generateASurname() {
    _mostRecentlyGeneratedName = surname[Random().nextInt(surname.length)];
    return _mostRecentlyGeneratedName;
  }

  ///this method will return the first name  of
  ///a boy or a girl
  static String generateAFirstName() {
    _mostRecentlyGeneratedName = firstName[Random().nextInt(firstName.length)];
    return _mostRecentlyGeneratedName;
  }

  ///this method will return the first name  of a girl
  static String generateAGirlFirstName() {
    _mostRecentlyGeneratedName =
        femaleFirstName[Random().nextInt(femaleFirstName.length)];
    return _mostRecentlyGeneratedName;
  }

  ///this method will return the first name  of a boy
  static String generateABoyFirstName() {
    _mostRecentlyGeneratedName =
        maleFirstName[Random().nextInt(maleFirstName.length)];
    return _mostRecentlyGeneratedName;
  }

  ///this method will return the full name of a girl
  ///which is a combination of name + surname
  static String generateAGirlFullname() {
    String generatedFirstName =
        femaleFirstName[Random().nextInt(femaleFirstName.length)];
    String generatedSurname = surname[Random().nextInt(surname.length)];
    _mostRecentlyGeneratedName = generatedFirstName + ' ' + generatedSurname;
    return _mostRecentlyGeneratedName;
  }

  ///this method will return the full name of a boy
  ///which is a combination of name + surname
  static String generateABoyFullname() {
    String generatedFirstName =
        maleFirstName[Random().nextInt(maleFirstName.length)];
    String generatedSurname = surname[Random().nextInt(surname.length)];
    _mostRecentlyGeneratedName = generatedFirstName + ' ' + generatedSurname;
    return _mostRecentlyGeneratedName;
  }

  ///This Will return a userName
  static String generateAUsername() {
    int number = Random().nextInt(2);
    if (number == 0) // we use the prefix
    {
      return nicknames[Random().nextInt(nicknames.length)] +
          (10 + Random().nextInt(200)).toString();
    } else // we just use the nickname list
    {
      return nicknames[Random().nextInt(nicknames.length)];
    }
  }

  ///[WARNING] needs to be called ''ONLY'' after generating a name.
  ///This method will look for the most recently generated name and generate
  ///an email from it
  ///
  ///If no name is found it will generate a random email ,
  ///very usefull when using a loop to generate data
  static String generateEmailFromMostRecentName() {
    if (_mostRecentlyGeneratedName == '') {
      return generateRandomEmail();
    } else {
      String email;
      int number = Random().nextInt(2);
      //we use prefeix
      if (number == 0) {
        email = (1 + Random().nextInt(23)).toString() +
            _mostRecentlyGeneratedName +
            '@' +
            emailProvider[Random().nextInt(emailProvider.length)] +
            '.com';
      }
      //we use suffix
      else {
        email = _mostRecentlyGeneratedName +
            (91 + Random().nextInt(500)).toString() +
            '@' +
            emailProvider[Random().nextInt(emailProvider.length)] +
            '.com';
      }
      email = email.replaceAll(new RegExp(r"\s+\b|\b\s"), "");
      
      return email;
    }
  }

  ///Use this to generate an age for a kid
  ///in the range 5...9 inclusive
  ///by default the year extension will be added
  static String generateKidAge({bool useExtension = true}) {
    if (useExtension == true) {
      int age = (5 + Random().nextInt(5));
      if (age == 1) {
        return '1 year';
      } else {
        return age.toString() + ' years';
      }
    } else {
      return (5 + Random().nextInt(5)).toString();
    }
  }

  ///Use this to generate an age for a teenager
  ///in the range 10...19 inclusive
  ///by default the year extension will be added
  static String generateTeenAge({bool useExtension = true}) {
    if (useExtension == true) {
      return (10 + Random().nextInt(10)).toString() + ' years';
    } else {
      return (10 + Random().nextInt(10)).toString();
    }
  }

  ///This will generate a local Address
  static String generateLocalAddress() {
    return localAdresses[Random().nextInt(localAdresses.length)];
  }

  ///Use this to generate an age for a mid Adult
  ///in the range 20...65 inclusive
  ///by default the year extension will be added
  static String generateMidAdultAge({bool useExtension = true}) {
    if (useExtension == true) {
      return (20 + Random().nextInt(46)).toString() + ' years';
    } else {
      return (20 + Random().nextInt(46)).toString();
    }
  }

  ///Use this to generate an age for an Adult
  ///in the range 66...100 inclusive
  ///by default the year extension will be added
  static String generateAdultAge({bool useExtension = true}) {
    if (useExtension == true) {
      return (66 + Random().nextInt(35)).toString() + ' years';
    } else {
      return (66 + Random().nextInt(35)).toString();
    }
  }

  ///tThus will generate an email based on a nickname
  static String generateRandomEmail() {
    String email;
    int number = Random().nextInt(2);
    //we use prefeix
    if (number == 0) {
      email = (1 + Random().nextInt(23)).toString() +
          nicknames[Random().nextInt(nicknames.length)] +
          '@' +
          emailProvider[Random().nextInt(emailProvider.length)] +
          '.com';
    }
    //we use suffix
    else {
      email = nicknames[Random().nextInt(nicknames.length)] +
          (91 + Random().nextInt(500)).toString() +
          '@' +
          emailProvider[Random().nextInt(emailProvider.length)] +
          '.com';
    }
    
    return email;
  }

  /// This will generate a lamguage name among the
  /// 38 most common languages
  static String generateACommonSpokenLanguage() {
    return languages[Random().nextInt(languages.length)];
  }

  /// This will generate a lamguage name that you probably do not
  /// know exist
  static String generateASpokenLanguage() {
    return otherLanguages[Random().nextInt(otherLanguages.length)];
  }

  /// Use this to generate a phone number
  ///
  /// ->If the length is null it will be assumed to be 10;
  ///
  /// -> If startingWith is null then it will start with a random number;
  ///
  /// -> If the country code is null then a phone number without country code will be returned
  static String generatePhoneNumber(
      {int length, int startingWith, bool shallFormat, int countryCode}) {
    String phoneNumber = '';
    if (startingWith != null) {
      phoneNumber = startingWith.toString();
    } else {
      do {
        phoneNumber = Random().nextInt(10).toString();
      } while (phoneNumber == '0');
    }
    if (length != null) {
      // we take care of the length of the min and max
      if(startingWith != null)
      {
        for (int i = 0; i < length-startingWith.toString().length; i++) {
        phoneNumber = phoneNumber + Random().nextInt(10).toString();
      }
      }
      else
      {
        for (int i = 0; i < length - 1; i++) {
        phoneNumber = phoneNumber + Random().nextInt(10).toString();
      }
      }
    } else {
      for (int i = 0; i < 9; i++) {
        phoneNumber = phoneNumber + Random().nextInt(10).toString();
      }
    }
    //print(phoneNumber);

    // now we have to format this
    if (shallFormat == true || shallFormat == null) {
      if (length == 10 || length == null) {
        phoneNumber = _formatNumber(phoneNumber);
        //print(phoneNumber);
      } else {
        if (shallFormat == true) {
          print(
              '\n===DataGenerator===\nConfiguration error: The length of the phone number must be 10 otherwise formating won\'t happen your string will be returned unformated\nReturned String will be $phoneNumber');
        }
      }
    }
    if (countryCode == null) {
      return phoneNumber;
    } else {
      if (countryCode == 0) {
        return '+1 ' + phoneNumber;
      }
      //print('+$countryCode ' + phoneNumber);
      return '+$countryCode ' + phoneNumber;
    }
  }

  ///Use this to generate the path to a local
  ///adult female profile picture
  static String generateAdultFemaleImage() {
    return 'packages/ultimate_data_generator/images/adultf/a${(1 + Random().nextInt(10)).toString()}.jpg';
  }

  ///Use this to generate the path to a local
  ///adult male profile picture
  static String generateAdultMaleImage() {
    return 'packages/ultimate_data_generator/images/adultm/a${(1 + Random().nextInt(10)).toString()}.jpg';
  }

  ///Use this to generate the path to a local
  ///Kid male profile picture
  static String generateKidMaleImage() {
    return 'packages/ultimate_data_generator/images/kidb/k${(1 + Random().nextInt(10)).toString()}.jpg';
  }

  ///Use this to generate the path to a local
  ///Kid female profile picture
  static String generateKidFemaleImage() {
    return 'packages/ultimate_data_generator/images/kidg/k${(1 + Random().nextInt(10)).toString()}.jpg';
  }

  ///Use this to generate the path to a local
  ///teen female profile picture
  static String generateTeenFemaleImage() {
    return 'packages/ultimate_data_generator/images/teeng/t${(1 + Random().nextInt(10)).toString()}.jpg';
  }

  ///Use this to generate the path to a local
  ///teen male profile picture
  static String generateTeenMaleImage() {
    return 'packages/ultimate_data_generator/images/teenb/t${(1 + Random().nextInt(10)).toString()}.jpg';
  }

  ///Use this to generate the path to a local
  ///adult [OR] teenager female profile picture,
  ///no kids picture will be generated
  static String generateFemaleImage() {
    //teen
    if (Random().nextInt(2) == 0) {
      return 'packages/ultimate_data_generator/images/teeng/t${(1 + Random().nextInt(10)).toString()}.jpg';
    }
    //adult
    else {
      return 'packages/ultimate_data_generator/images/adultf/a${(1 + Random().nextInt(10)).toString()}.jpg';
    }
  }

  ///Use this to generate the path to a local
  ///adult [OR] teenager  male profile picture,
  ///
  ///no kids picture will be generated
  static String generateMaleImage() {
    //teen
    if (Random().nextInt(2) == 0) {
      return 'packages/ultimate_data_generator/images/teenb/t${(1 + Random().nextInt(10)).toString()}.jpg';
    }
    //adult
    else {
      return 'packages/ultimate_data_generator/images/adultm/a${(1 + Random().nextInt(10)).toString()}.jpg';
    }
  }
  ///This will generate a job or an occupation
  static String generateJobOccupation() {
    return jobOrOccupation[Random().nextInt(jobOrOccupation.length)];
  }

//=======PRIVATESS
  ///this is to parse a phone number to it's american parse
  static String _formatNumber(String numberToFormat) {
    String formatedString = '(';
    formatedString = formatedString + numberToFormat.substring(0, 3);
    formatedString = formatedString + ') ';
    formatedString = formatedString + numberToFormat.substring(3, 6) + '-';
    formatedString = formatedString + numberToFormat.substring(6);
    return formatedString;
  }
}
