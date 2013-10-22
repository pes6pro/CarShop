//
//  PhotoWithLabel.h
//  ParisGateaux
//
//  Created by techmaster on 8/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoWithLabelDelegate.h"
@interface PhotoWithLabel : UIView
- (id) initWithIndex: (NSInteger)index
               andID: (NSInteger)ID
            andPhoto: (NSString*) photo
            andTitle: (NSString*) title
               andVC: (id<PhotoWithLabelDelegate>) viewController
         andSelector: (SEL) selector;

@property (nonatomic, assign) NSInteger ID;
@property (nonatomic, strong) NSString* photo;
@property (nonatomic, strong) NSString* title;
@property (nonatomic, weak) id<PhotoWithLabelDelegate> delegate;
@end
