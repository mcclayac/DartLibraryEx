import 'package:list_spanish_words/list_spanish_words.dart';
import 'package:profanity_filter/profanity_filter.dart';

void main(List<String> arguments) {


  print('DartLibraryEx.dart');
  print('-------------------------------------');
  print('-------------------------------------');
  print('-------------------------------------');
  print('-------------------------------------');
  print('-------------------------------------');

//  printSpanishNames();
  printProfanityFilter();


}

void printProfanityFilter() {
  final filter =
  ProfanityFilter(); //Other constructors are available, see README.
  String badString =
      'You are an ass, Fuck You, You Mother Fucker, Damn This'; //This string contains the profanity 'ass'

  //Check for profanity - returns a boolean (true if profanity is present)
  bool isStringProfane =
  filter.checkStringForProfanity(badString); //Returns 'true'
  print('The string $badString has profanity: $isStringProfane');

  //Get the profanity used - returns a List<String>
  List<String> profanityUsed = filter.getAllProfanityInString(badString);
  print(profanityUsed); //['ass']

  //Censor the string - returns a 'cleaned' string.
  String cleanString = filter.censorString(badString);
  print('Clean : $cleanString');
}

void printSpanishNames() {

  print(list_spanish_words.sublist(0, 50).join('mom' + '\n' ));

  // print(list_spanish_words);

}
