//
//  ViewController.m
//  TestPBJHex
//
//  Created by Fernando Pereira on 12/3/16.
//  Copyright © 2016 Troezen. All rights reserved.
//

@import QuartzCore;

#import "ViewController.h"
#import "PBJHexagonFlowLayout.h"
#import "TPBJCellCollectionViewCell.h"


static NSString* const cellID = @"pbjHexCell";

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PBJHexagonFlowLayout *flowLayout = (PBJHexagonFlowLayout*)self.collectionView.collectionViewLayout;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    flowLayout.sectionInset = UIEdgeInsetsZero;
    flowLayout.headerReferenceSize = CGSizeZero;
    flowLayout.footerReferenceSize = CGSizeZero;
    flowLayout.itemSize = CGSizeMake(80.0f, 92.0f);
    flowLayout.itemsPerRow = 4;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 60;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    TPBJCellCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    [cell configure:[self testImage]];
    return cell;
}

- (UIImage*) testImage
{
    static UIImage* image = nil;
    if ( !image ) {
        image = [UIImage imageNamed:@"testhexagon"];
        image = [[UIImage alloc] initWithCGImage: image.CGImage
                                           scale: 1.0
                                     orientation: UIImageOrientationRight];
    }
    return image;
}

@end
