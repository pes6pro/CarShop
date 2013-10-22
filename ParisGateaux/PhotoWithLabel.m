//
//  PhotoWithLabel.m
//  ParisGateaux
//
//  Created by techmaster on 8/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "PhotoWithLabel.h"

@implementation PhotoWithLabel

- (id) initWithIndex: (NSInteger)index
               andID: (NSInteger)ID
            andPhoto: (NSString*) photo
            andTitle: (NSString*) title
               andVC: (id<PhotoWithLabelDelegate>) viewController
         andSelector: (SEL) selector;
{
    CGRect frame = CGRectMake(0, index * 90+70, 320, 90);
    self = [super initWithFrame:frame];
    if (self) {
        
        self.photo = photo;
        self.title = title;
        self.ID = ID;
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.photo]];
        imageView.frame = CGRectMake(5, 5, 80, 80);
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(90, 35, 200, 20)];
        label.text = self.title;
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        button.frame = CGRectMake(280, 35, 30, 30);
        self.delegate = viewController;
        
       /* [button addTarget:viewController action:selector forControlEvents:UIControlEventTouchUpInside];*/
        [button addTarget:self
                   action:@selector(handleEvent:)
         forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:imageView];
        [self addSubview:label];
        [self addSubview:button];
    }
    return self;
}

- (void) handleEvent: (id) sender
{
    [self.delegate onItemTap:self.ID];
}


@end
