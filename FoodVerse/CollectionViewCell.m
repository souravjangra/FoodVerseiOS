//
//  CollectionViewCell.m
//  FoodVerse
//
//  Created by Sourav Jangra on 01/07/20.
//  Copyright © 2020 Sourav Jangra. All rights reserved.
//

#import "CollectionViewCell.h"
#import "YogaKit/UIView+Yoga.h"

@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.contentView configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.flexDirection = YGFlexDirectionRow;
    }];
    
    [self.contentView.yoga applyLayoutPreservingOrigin:YES];
}

@end
