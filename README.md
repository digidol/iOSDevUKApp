# iOSDevUK
This is a redevelopment of the conference app for [iOSDevUK](https://www.iosdevuk.com), in its eleventh year (2023). 
The app uses [SwiftUI](https://developer.apple.com/xcode/swiftui/) and [Firebase](https://firebase.google.com/).

## Setup

To start using the code, the following steps are required. 

### Bundle Id

The Bundle Id is set to one for the conference app for its release on the AppStore. 
Is using this code as a basis for a different conference app, change the Bundle ID for something that is associated with your developer account.

### Firebase

The application uses Firebase for the data storage and the location of the image files.

* **AppInformation** - Information for the application. The collection contains one item, which has the fields for the application. 
* **InformationItem** - A collection of links to further infomration, e.g. joining instructions.
* **Location** - A collection of locations, associated with a location type (e.g. supermarkets, EV charging points).
* **Session** - A collection of sessions, which includes talks, workshops and social events.
* **Speaker** - A collection of infomration about the speakers for the conference.
* **Sponsor** - A collection of information about the sponsors for the conference.

The file `GoogleService-Info.plist` is required to be inserted into the project. 
This is generated by Firebase when a new data store is created. The Xcode project has a placeholder for the file, but no file is included in the repository.

## License

The app uses the MIT License, specified in the [License file](LICENSE).

## Developers

The re-designed app has been created by David Kababyan ([@Dave_iOSDev](https://twitter.com/Dave_iOSDev)), with some contributions from Neil Taylor ([@Digidol](https://twitter.com/digidol)).
