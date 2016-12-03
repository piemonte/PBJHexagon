//
//  TPBJCellCollectionViewCell.m
//  TestPBJHex
//
//  Created by Fernando Pereira on 12/3/16.
//  Copyright © 2016 Troezen. All rights reserved.
//

#import "TPBJCellCollectionViewCell.h"

@interface TPBJCellCollectionViewCell ()

@property (nonatomic) UIImageView* imageView;

@end

@implementation TPBJCellCollectionViewCell

- (nonnull instancetype) initWithFrame:(CGRect)frame
{
    if ( self = [super initWithFrame:frame] ) {
        [self commonInitializer:frame];
    }
    return self;
}

- (nullable instancetype) initWithCoder:(NSCoder *)aDecoder
{
    if ( self = [super initWithCoder:aDecoder] ) {
        [self commonInitializer:CGRectZero];
    }
    return self;
}

- (void) commonInitializer:(CGRect)frame
{
    _imageView = [[UIImageView alloc] initWithFrame:frame];
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:self.imageView];
}

- (void) prepareForReuse
{
    [super prepareForReuse];
    self.imageView.image = nil;
}

- (void) layoutSubviews
{
    [super layoutSubviews];
    CGRect frame = self.contentView.frame;
    frame.size.width -= 2;
    frame.size.height -= 2;
    frame.origin.x += 1;
    frame.origin.y += 1;
    self.imageView.frame = frame;
}

- (void) configure:(nonnull UIImage*)image
{
    self.imageView.image = image;
}

@end
