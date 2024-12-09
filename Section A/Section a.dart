// part f
o	StatelessWidget: Immutable widgets that don’t change once created.
o	StatefulWidget: Mutable widgets that can update their state.

// part c
	Dart is a general-purpose, object-oriented programming language developed by Google
 It is the primary language used for building applications in Flutter. 
 Dart is used in Flutter because it is specifically designed to meet the requirements of modern, high-performance applications while also enabling the unique features of Flutter
- Dart can be compiled directly to native machine code for iOS and Android. This eliminates the need for a JavaScript bridge and provides near-native performance for Flutter apps.

// part b
	Advantages of Using Flutter:
o	Fast development with Hot Reload.
o	Cross-platform development (iOS, Android, Web, Desktop).
o	Rich set of pre-built widgets.
o	Access to native features with a single codebase.
o	High performance with direct compilation to native code.


// part f
o	StatelessWidget: Immutable widgets that don’t change once created. it can be used  When the UI doesn’t change over time.
o	StatefulWidget: Mutable widgets that can update their state. it can be used When the UI needs to change dynamically in response to user input or external data.


// part d
Hot Reload in Flutter is a feature that allows developers to see the immediate effects of code changes in a running app without restarting the application or losing its current state. It is one of the standout features of Flutter, significantly improving the development experience and productivity.
here is how it improves productivity Immediate Updates:
    Developers see the effects of code changes instantly without restarting the app.
Quick Experimentation:
    Developers can experiment with design variations, logic tweaks, or bug fixes on the fly.
// part a
Flutter is an open-source UI software development toolkit created by Google. It is used to develop applications for multiple platforms from a single codebase. 
  types of applications that you can develop using Flutter
  - mobile apps
  -Web applications
  -Desktop applications
  -enterprise applications

//   part e
features of Flutter that make it popular
Cross-Platform Development
hot Reload
customised widgets
high performance

// part g
int addNumbers(int num1, int num2) {
  return num1 + num2;
}

// if num1 is 5 and num2 is 7
void main() {
  int result = addNumbers(5, 7);
  print("The sum is: $result"); 
}

// part h
import 'dart:io';

void main() {
  print("Enter a number: ");
  String? input = stdin.readLineSync(); 

  if (input != null) {
    int number = int.parse(input); 

    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }
  } else {
    print("Invalid input. Please enter a number.");
  }
}

// part i
void main() {
  // Create a Map to store names with corresponding values
  Map<String, String> namesMap = {
    'name1': 'Asaaba',
    'name2': 'shallot',
    'name3': 'masika'
  };

  // Print the map
  print('Names in the map:');
  
  // Iterating through the map 
  namesMap.forEach((key, value) {
    print('$key: $value');
  });
}








