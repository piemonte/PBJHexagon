![PBJHexagon](https://raw.github.com/piemonte/PBJHexagon/master/PBJHexagon.gif)

## Hexagon
`PBJHexagon` is a simple hexagon grid flow layout for UICollectionViews. It was originally created for the [DIY app](https://diy.org/app) to display skill hexagons.

Please review the [release history](https://github.com/piemonte/PBJHexagon/releases) for more information.

The [github issues page](https://github.com/piemonte/PBJHexagon/issues) is a great place to start a discussion but also allows others to benefit and chime in on the project too.

## Installation

[CocoaPods](http://cocoapods.org) is the recommended method of installing, just add the following line to your `Podfile`:

```ruby
pod 'PBJHexagon'
```

## Usage

```objective-c
#import "PBJHexagonFlowLayout.h"
```

```objective-c
PBJHexagonFlowLayout *flowLayout = [[PBJHexagonFlowLayout alloc] init];
flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
flowLayout.sectionInset = UIEdgeInsetsZero;
flowLayout.headerReferenceSize = CGSizeZero;
flowLayout.footerReferenceSize = CGSizeZero;
flowLayout.itemSize = CGSizeMake(80.0f, 92.0f);
flowLayout.itemsPerRow = 4;

_hexagonGridViewController = [[UICollectionViewController alloc] initWithCollectionViewLayout:flowLayout];
```

## Resources

* [Creating Custom Layouts](https://developer.apple.com/library/ios/documentation/WindowsViews/Conceptual/CollectionViewPGforIOS/CreatingCustomLayouts/CreatingCustomLayouts.html)
* [objc Custom Collection View Layouts](http://www.objc.io/issue-3/collection-view-layouts.html)
* [NSHipster UICollectionView](http://nshipster.com/uicollectionview/)

## License

'PBJHexagon' is available under the MIT license, see the see the [LICENSE](https://github.com/piemonte/PBJHexagon/blob/master/LICENSE) file for more information.
