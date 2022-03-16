# Extenstions
![podName](https://img.shields.io/badge/Extenstion-blue)
![platform](https://img.shields.io/badge/platform-IOS-green)
![Version](https://img.shields.io/badge/pod-v0.0.3-orange)
![License](https://img.shields.io/badge/License-MIT-green)
## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.
## Installation
Extenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
## this will install all subpods
```ruby
pod 'Extenstions', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
# SubPods
## Accessability Id
![podName](https://img.shields.io/badge/AccessabilityID-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/AccessabilityId-green)
## Installation
AccessabilityIdExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/AccessabilityId', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UIAlertController object 
    - setActions(baseAccessabilityId: String)
        - it loops on all alert functions and assign an accessability id for each action useing the "baseAccessabilityId" parameter you passed and append to it "-[actionIndex]" <br/>
        so if you passed baseAccessabilityId: "myId", then action 1 in the alert will have accessability id like this "myId-1", etc...
    - setTitle(accessabilityId: String)
        - add accessability id for alert title if founded
    - setMessage(accessabilityId: String)
        - add accessability id for alert message if founded
----
## UIView
![podName](https://img.shields.io/badge/UIView-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/UIView-green)
## Installation
UIViewExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/UIView', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UIView object 
    - IBInspectable Variables (used from storyboard)
        - borderColor
        - borderWidth
        - cornerRadius
    - screenshot: UIImage?
    - parentViewController: UIViewController?
    - pinToSuperViewEdges(with edgeInsets: UIEdgeInsets = UIEdgeInsets.zero)
    - fadeIn(duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: ((Bool) -> Void)? = nil)
    - fadeOut(duration: TimeInterval = 1.0, delay: TimeInterval = 3.0, completion: ((Bool) -> Void)? = nil)
    - convertedFrame(fromSubview subview: UIView) -> CGRect?
    - dropShadow(shadowColor: UIColor = .black, shadowOpacity: Float = 0.1, shadowOffset: CGSize = .zero, shadowRadius: CGFloat = 1, masksToBounds: Bool = false)
    - subviewsRecursive() -> [UIView]
---
## String
![podName](https://img.shields.io/badge/String-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/String-green)
## Installation
StringExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/String', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from String object 
    - localized: String
    - getDate(withDateFormat dateFormat: String) -> Date
    - ranges(of substring: String, options: CompareOptions = [], locale: Locale? = nil) -> [Range<Index>]
    - isLessThan(newVersion: String) -> Bool
    - rtlEnglishBegningUniCode(languageCode: String) -> String?
    - rtlEnglishEndingUniCode(languageCode: String) -> String?
---
## Bundle
![podName](https://img.shields.io/badge/Bundle-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/Bundle-green)
## Installation
BundleExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/Bundle', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from Bundle object 
    - appName: String
    - appVersion: String
---
## Encodable
![podName](https://img.shields.io/badge/Encodable-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/Encodable-green)
## Installation
EncodableExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/Encodable', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from Encodable object 
    - JSONString() -> String?
    - JSONDictionary() -> [String: Any]?
---
## UILabel
![podName](https://img.shields.io/badge/UILabel-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/UILabel-green)
## Installation
UILabelExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/UILabel', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UILabel object 
    - calculateMaxLines(width: CGFloat) -> Int
        - returns count of lines in label with String
---
## Float
![podName](https://img.shields.io/badge/Float-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/Float-green)
## Installation
FloatExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/Float', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from Float object 
    - rounded(digits: Int) -> Float
        - return float number rounded to number of digits you passed
---
## UIViewController
![podName](https://img.shields.io/badge/UIViewController-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/UIViewController-green)
## Installation
UIViewControllerExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/UIViewController', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UIViewController object 
    - add(viewController: UIViewController, toView parentView: UIView, rect: CGRect)
        - embed a viewController inside view in another viewController
---
## NSMutableAttributedString
![podName](https://img.shields.io/badge/NSMutableAttributedString-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/NSMutableAttributedString-green)
## Installation
NSMutableAttributedStringExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/NSMutableAttributedString', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UIAlertController object 
    - apply(font: UIFont, onOccurrences subString: String)
    - apply(font: UIFont, subString: String)
    - apply(font: UIFont, onRange: NSRange)
        - apply font on Occurrences, String, or Range
---
## Decodable
![podName](https://img.shields.io/badge/Decodable-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/Decodable-green)
## Installation
DecodableExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/Decodable', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from Decodable object 
    - static func decode(jsonString: String) -> Self? 
    - static func decode(jsonDictionary: [String: Any]) -> Self? 
        - returns a decoded object from string or dictionary
---
## UITableView
![podName](https://img.shields.io/badge/UITableView-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/UITableView-green)
## Installation
UITableViewExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/UITableView', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UIAlertController object 
    - scroll(to: Position, animated: Bool)
        - scrolls tables view to top or bottom
---
## UIDevice
![podName](https://img.shields.io/badge/UIDevice-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/UIDevice-green)
## Installation
UIDeviceExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/UIDevice', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UIDevice object 
    - isPhone() -> Bool 
    - isPad() -> Bool
    - isPad12() -> Bool
---
## FileManager
![podName](https://img.shields.io/badge/FileManager-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/FileManager-green)
## Installation
FileManagerExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/FileManager', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from FileManager object
    - static var documentDirectoryURL: URL
    - static var documentDirectoryPath: String
    - static func createDirectory(atPath path: String) -> Bool
    - static func contents(atPath path: String) -> [String]
    - static func removeItem(atPath path: String) -> Bool
    - static func moveItem(at sourceURL: URL, to destinationURL: URL) -> Bool
    - static func fileSizeByMB(atPath path: String) -> Float?
---
## UIScrollView
![podName](https://img.shields.io/badge/UIScrollView-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/UIScrollView-green)
## Installation
UIScrollViewExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/UIScrollView', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UIScrollView object 
    - scrollTo(view: UIView, keyboardSize: CGRect)
    - resetContentInset()
    - scrollTo(view: UIView, bottomInset: CGFloat = .zero)
---
## UIImage
![podName](https://img.shields.io/badge/UIImage-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/UIImage-green)
## Installation
UIImageExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/UIImage', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
- this function is acessabile from UIImage object 
    - imageWithFixedOrientation() -> UIImage
## URL
![podName](https://img.shields.io/badge/URL-blue)
![Installation](https://img.shields.io/badge/Installation-Extenstions/URL-green)
## Installation
URLExtenstions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Extenstions/URL', :git => 'https://[YOUR_NAGWA_AZURE_USER_NAME]@dev.azure.com/nagwa-limited/Nagwa-Libraries-IOS/_git/Extenstions'
```
### pod functions 
    - this function is acessabile from URL object 
    - appending(queryName: String, value: String?) -> URL
        - appends a query parameters for url and return a new url 

## Author
Mohamed Elbohy, malbohy@gmail.com
## License
Extenstions is available under the MIT license. See the LICENSE file for more info.
