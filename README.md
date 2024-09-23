# SIMPLE TEMPLATE FLUTTER PROJECT

------------

#### prerequisites
at least, you have flutter version 3.
in case you get an error when installing package, probably you need to bump your version using `flutter upgrade`

[optional] for windows, you need to install CMake or minGW to run Makefile. unless, you need to run command manually.
here some reference to help you install it :
- https://medium.com/@samsorrahman/how-to-run-a-makefile-in-windows-b4d115d7c516
- https://earthly.dev/blog/makefiles-on-windows/

[optional] cubit extension in vscode / android studio . this help you to make cubit and state file easier.

------------


#### Get Started
if you first in this project, you have `make` in your terminal, just run `make first-start`. it will also run `flutter pub get`.

in case the project installed, you can follow these steps :
1. run `make pub` or `flutter pub get `. conditionally, just when you add new packages.
2. run `make build` or `make watch` (automatically run build if there is change). this command is to generate some important code.
3. run `make run-dev` or `make run-prod`. run as you need.



------------
#### DIrectory tree

this tree not including whole directories in this project. just important one.

    | main
    | common
    |---- | di
    |---- | routes
    | features
    |---- | example_feature
			 |---- presentation
			 |			|---- cubit
			 |			|---- pages
			 |			|---- widgets
			 |---- domain
			 |			|---- models
			 |			|---- usecase
			 |			|---- repository (abstract)
			 |			|---- request (optional)
			 |---- data
			 |			|---- repository (implementation)
			 |			|---- remote
			 |			|---- shared-preferences
			 |			|---- models (response)
------------

#### Reference
this template using some learning curve and advance concept that probably need time to learn. but trust me, its good to have 👍

- Clean architecture
  this is general concept that separates code into layers—presentation, domain, and data—ensuring clear responsibilities. this approach improves maintainability, scalability, and testability by isolating business logic from UI and data concerns. most tech companies use it because it leads to cleaner, more flexible code, making it easier to adapt, scale, and manage over time.
  there is some reference may help you to understand :
1. https://medium.com/ruangguru/an-introduction-to-flutter-clean-architecture-ae00154001b0
2. https://youtube.com/playlist?list=PL7jdfftn7HKtnLOuvXI8AQ3InQ7tq1uSx&si=RNvYyKTDxCSLuQOl

-  Dependency Injection
   this concept is a design pattern where objects receive their dependencies from an external source, rather than creating them internally. this promotes loose coupling between components, making the code more modular, testable, and maintainable. by using DI, developers can easily swap out dependencies (like services or repositories) without modifying the dependent class, which improves flexibility and allows for easier unit testing with mock objects.
   there is some reference may help you to understand :
1. https://pub.dev/packages/get_it
2. https://rodrigolmti.medium.com/flutter-di-a-true-love-story-1e5a5ae2ba2d
3. https://medium.com/@ibrahimtalhahurata/dependency-injection-in-flutter-with-get-it-5f657e068395

- State Management
  this concpet ensures UI updates when app data changes. Using Cubit from Bloc simplifies handling state by separating business logic from the UI, making the app more maintainable and testable, especially in complex apps. why we use Cubit? as simple as not harder from Bloc but still flexible and powerful.
1. https://pub.dev/packages/flutter_bloc


------------

#### Deployment
coming soon.



Happy coding ❤️
