//
//  HomeViewController.m
//  FoodVerse
//
//  Created by Sourav Jangra on 01/07/20.
//  Copyright © 2020 Sourav Jangra. All rights reserved.
//

#import "HomeViewController.h"
#import "CollectionViewCell.h"

@interface HomeViewController () {
    NSArray *foodCategories;
}

@end

@implementation HomeViewController
    
static NSString *const reuseIdentifier = @"Cell";

-(void) loadView {
    
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    _collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    
    [_collectionView setDataSource:self];
    [_collectionView setDelegate:self];
    
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [_collectionView setBackgroundColor:[UIColor grayColor]];
    
    [self.view addSubview:_collectionView];
    
//    [collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"FoodVerse";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
    
    foodCategories = @[@"Fresh Veggies", @"Fruits", @"Dry Fruits", @"Biscuits & Cookies", @"Breakfast Food", @"Spices & Seasonings", @"Spread,Sauces & Ketchups"];
    
}

#pragma mark - UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return foodCategories.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor greenColor];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(120, 120);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    //T L B R
    return UIEdgeInsetsMake(12, 12, 12, 12);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
