//
//  DetailScreen.m
//  ParisGateaux
//
//  Created by techmaster on 8/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "DetailScreen.h"
#import "PhotoWithLabel.h"
@interface DetailScreen ()

@end

@implementation DetailScreen

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}
-(void) removeSubView
{
    NSArray *viewsToRemove = [self.view subviews];
    for (UIView *v in viewsToRemove) {
        [v removeFromSuperview];
        
    }
}
- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self removeSubView];
    SEL selector = @selector(onItemClick:);
    PhotoWithLabel *item1;
    PhotoWithLabel *item2;
    PhotoWithLabel *item3;
    PhotoWithLabel *item4;
    switch (self.category) {
        case CATEGORY_TOYOTA:
        {
            self.title = @"Toyota";
            item1 = [[PhotoWithLabel alloc] initWithIndex:0
                                                    andID:123
                                                 andPhoto:@"Ford_Escape.png"
                                                 andTitle:@"Ford Escape"
                                                    andVC: self
                                              andSelector: selector];
            
            item2 = [[PhotoWithLabel alloc] initWithIndex:1
                                                    andID:122
                                                 andPhoto:@"Ford_Everest.png"
                                                 andTitle:@"Ford Everest"
                                                    andVC: self
                                              andSelector: selector];
            
            item3 = [[PhotoWithLabel alloc] initWithIndex:2
                                                    andID:124
                                                 andPhoto:@"Ford_Focus.png"
                                                 andTitle:@"Ford Focus"
                                                    andVC: self
                                              andSelector: selector];
            
            item4 = [[PhotoWithLabel alloc] initWithIndex:3
                                                    andID:125
                                                 andPhoto:@"Ford_Transit.png"
                                                 andTitle:@"Ford Transit"
                                                    andVC: self
                                              andSelector: selector];
        }
            
            break;
        case CATEGORY_HONDA:
        {
            self.title = @"Honda";
            item1 = [[PhotoWithLabel alloc] initWithIndex:0
                                                    andID:123
                                                 andPhoto:@"Honda_City.png"
                                                 andTitle:@"Honda City"
                                                    andVC: self
                                              andSelector: selector];
            
            item2 = [[PhotoWithLabel alloc] initWithIndex:1
                                                    andID:122
                                                 andPhoto:@"Honda_Civic.png"
                                                 andTitle:@"Honda Civic"
                                                    andVC: self
                                              andSelector: selector];
            
            item3 = [[PhotoWithLabel alloc] initWithIndex:2
                                                    andID:124
                                                 andPhoto:@"Honda_CR-V.png"
                                                 andTitle:@"Honda CR-V"
                                                    andVC: self
                                              andSelector: selector];
            
            item4 = [[PhotoWithLabel alloc] initWithIndex:3
                                                    andID:125
                                                 andPhoto:@"Honda_Accord.png"
                                                 andTitle:@"Honda Accord"
                                                    andVC: self
                                              andSelector: selector];
        }
            
            break;
        case CATEGORY_FORD:
        {
            self.title = @"Ford";
            item1 = [[PhotoWithLabel alloc] initWithIndex:0
                                                    andID:123
                                                 andPhoto:@"Toyota_Camry.png"
                                                 andTitle:@"Toyota"
                                                    andVC: self
                                              andSelector: selector];
            
            item2 = [[PhotoWithLabel alloc] initWithIndex:1
                                                    andID:122
                                                 andPhoto:@"Toyota_Altis.png"
                                                 andTitle:@"Toyota Altis"
                                                    andVC: self
                                              andSelector: selector];
            
            item3 = [[PhotoWithLabel alloc] initWithIndex:2
                                                    andID:124
                                                 andPhoto:@"Toyota_Innova.png"
                                                 andTitle:@"Toyota Innova"
                                                    andVC: self
                                              andSelector: selector];
            
            item4 = [[PhotoWithLabel alloc] initWithIndex:3
                                                    andID:125
                                                 andPhoto:@"Toyota_Vios.png"
                                                 andTitle:@"Toyota Vios"
                                                    andVC: self
                                              andSelector: selector];
        }
            
            break;
        default:
            break;
    }
    
    

    
    [self.view addSubview:item1];
    [self.view addSubview:item2];
    [self.view addSubview:item3];
    [self.view addSubview:item4];
    
}

- (void) onItemClick: (id) sender
{
    NSLog(@"Cool !");
}

- (void) onItemTap: (NSInteger)ID;
{
    NSLog(@"%d", ID);
}



@end
