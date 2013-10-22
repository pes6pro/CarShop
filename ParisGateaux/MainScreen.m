//
//  MainScreen.m
//  ParisGateaux
//
//  Created by techmaster on 8/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "MainScreen.h"
#import "DetailScreen.h"
#import "NearbyShop.h"
@interface MainScreen ()
@property (nonatomic, strong) DetailScreen *detailScreen;
@property (nonatomic, strong) NearbyShop *nearByShop;
@end

@implementation MainScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Car shop";
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                             style:UIBarButtonItemStylePlain            target:self
                                                                            action:nil];
}


#pragma mark - Handel User Interactions
- (IBAction)tapOnFord:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] initWithNibName:@"DetailScreen" bundle:nil];
    }
    self.detailScreen.category = CATEGORY_FORD;
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)tapOnToyota:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] initWithNibName:@"DetailScreen" bundle:nil];
    }
    self.detailScreen.category = CATEGORY_TOYOTA;
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)tapOnHonda:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] initWithNibName:@"DetailScreen" bundle:nil];
    }
    self.detailScreen.category = CATEGORY_HONDA;
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)tapOnNearbyShop:(id)sender {
    if (!self.nearByShop) {
        self.nearByShop = [[NearbyShop alloc] initWithNibName:@"NearbyShop" bundle:nil];
        
    }
    [self.navigationController pushViewController:self.nearByShop animated:YES];
}





@end
