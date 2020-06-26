// import 'package:provider/provider.dart';
// import 'package:photo_no_swiping/utils/sharedPref_util.dart';
// import 'package:provider/single_child_widget.dart';

// // ! architecture guided by: https://github.com/FilledStacks/flutter-tutorials/tree/master/014-provider-v3-updates/2-final

// List<SingleChildWidget> providers = [
//   ...independentServices,
//   ...dependentServices,
//   ...uiConsumableProviders
// ];

// // ? These are classes/objects that do not depend on any other services to execute their logic
// List<SingleChildWidget> independentServices = [
//   // Provider.value(value: SearchService()),
//   // Provider.value(value: FirestoreImageService()),
//   // Provider.value(value: SharedPreferencesService)
// ];

// // ? These are classes/object that depend on previously registered services
// List<SingleChildWidget> dependentServices = [
//   // ProxyProvider<Api, AuthenticationService>(
//   //   builder: (context, api, authenticationService) =>
//   //       AuthenticationService(api: api),
//   // )
// ];

// // ? These are values that you want to consume directly in the UI.
// // ? You can add values here if you would have to introduce a property on most,
// // ? if not all your models just to get the data out. In our case the user information.
// // ? If we don't provide it here then all the models will have a user property on it.
// // ? You could also just add it to the BaseModel, but I digress.
// List<SingleChildWidget> uiConsumableProviders = [
//   // StreamProvider<User>(
//   //   builder: (context) =>
//   //       Provider.of<AuthenticationService>(context, listen: false).user,
//   // )
// ];
