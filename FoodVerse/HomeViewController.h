//
//  HomeViewController.h
//  FoodVerse
//
//  Created by Sourav Jangra on 01/07/20.
//  Copyright © 2020 Sourav Jangra. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController<UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout> {
    UICollectionView *_collectionView;
}

@end

NS_ASSUME_NONNULL_END
