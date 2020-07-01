//
//  ViewController.m
//  FoodVerse
//
//  Created by Sourav Jangra on 01/07/20.
//  Copyright © 2020 Sourav Jangra. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        HomeViewController *homeVC = [[HomeViewController alloc] init];
        [self addChildViewController:homeVC];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
