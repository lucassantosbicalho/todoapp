# TO-DO App

### By Lucas Bicalho

This app were inspired on Alex Arutuynov's UI posted [here](https://dribbble.com/shots/14100356-ToDo-App-UI), but focusing on the Home screen.
I found some challenges while coding, and I think one of them deserves to be mentioned:

- ListView scroll don't working on web, just mobiles. After some research I found what follows:

*Flutter 2.5 Summary*
ScrollBehaviors now allow or disallow drag scrolling from specified PointerDeviceKinds. ScrollBehavior.dragDevices, by default, allows scrolling widgets to be dragged by all PointerDeviceKinds except for PointerDeviceKind.mouse.

So, to make it work, I follow the *Setting a custom ScrollBehavior for your application* demonstrated at [flutter documentation](https://docs.flutter.dev/release/breaking-changes/default-scroll-behavior-drag).