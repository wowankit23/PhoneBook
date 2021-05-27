# contact_silverlist

Phone Contact List Using Silvers And GroupView


Approach and Architecture of the App.

This app uses a GroupView Widget to create a sectioned list with Grouped by their titles using providers as state management.

GroupView is Stateless widget with CustomScrollView and Slivers containing search bar, header and footer with section list of titles provided by user.

contact_state is the ChangeNotifier holding the state of the GroupView widget. GroupView Widget doesn't have any state except the Search text. I would have preferred search bar outside the widget but the requirement was that GroupView must contain search functionality.

Approach to build widget. I have created a Map of list with First alphabet as the key and corresponding elements as their values in a list format. For each header SliverToBoxAdapter has been used and SliverFixedExtentList for all of his children which loads all of them at once as a seperate list. Because of this hierarchical structure(Nested Lists) of sections. It is difficult to scroll to a specific position.

Header is optional: This has to be checked if header is provided or not while scrolling to index.

Understanding Slivers
You probably know your way around StatefulWidgets and StatelessWidgets. Did you know they’re not Flutter’s only widgets? Flutter also uses RenderObjectWidgets.
RenderObjecsWidgets act as blueprints that hold the configuration information for RenderObjects. As suggested by their name, these objects are responsible for rendering. They form the basic infrastructure for managing the visual elements tree and defining the layout, painting and composting protocols.

https://koenig-media.raywenderlich.com/uploads/2021/01/WidgetDiagram-2.png

Build Instructions for the Flutter Application

Once you have cloned the repository, you will find the Flutter application on the master branch.

To build it, you need to have Flutter installed. Refer to the official docs provided by Flutter over here and install it for your operating system.

Once you're done, you can open up the application in your preferred editor. The best way to go would be to use Android Studio, but you can use any other editor such as VS Code as well.

The next step would be to enter the application directory and run the following command to fetch the dependencies.

flutter pub get
If you're using Android Studio, you can directly use the green play button to install the app on your device or an emulator. Else, you need to run the following command:

flutter run
This will run the application either on a physical device you'll have connected to your system or on an emulator that has been set up.

Other useful links:

Download Android Studio
Lab: Write your first Flutter app
Cookbook: Useful Flutter samples
For help getting started with Flutter, view the Flutter online documentation, which offers tutorials, samples, guidance on mobile development, and a full API reference.
