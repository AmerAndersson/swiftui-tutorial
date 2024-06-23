# Build an iOS app with SwiftUI


In this tutorial I'm going to use Swift and SwiftUI to build a small app to recommend fun new activities to users. Along the way you’ll meet several of the basic components of a SwiftUI app including:

-  Text
-  images
-  buttons
-  shapes
-  stacks
-  program state.


## Product Name

``WhyNotTry``


## Building a static UI

In this app I’m going to show the user a new activity they could try to keep fit, such as basketball, golf, and hiking. To make it a little more attractive, we’ll display each activity using its name, and also an icon representing the activity, then add a splash of color behind it.

The main part of our user interface will be a circle showing the currently recommended activity. 

- Circle()


## Bringing it to life

As much fun as archery is, this app really needs to suggest a random activity to users rather than always showing the same thing. That means adding two new properties to my view: one to store the array of possible activities, and one to show whichever one is currently being recommended.

SF Symbols has lots of interesting activities to choose from, so I’m picked out a handful that work well here. My ContentView struct already has a body property containing my SwiftUI code, but I want to add new properties outside that. So, code to this:

```swift
 var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

    var selected = "Archery"
``