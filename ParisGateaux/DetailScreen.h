//
//  DetailScreen.h
//  ParisGateaux
//
//  Created by techmaster on 8/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoWithLabelDelegate.h"
typedef enum {
    CATEGORY_TOYOTA,
    CATEGORY_HONDA,
    CATEGORY_FORD,
} CATEGORY;
@interface DetailScreen : UIViewController <PhotoWithLabelDelegate>
@property (nonatomic, assign) CATEGORY category;
@end
