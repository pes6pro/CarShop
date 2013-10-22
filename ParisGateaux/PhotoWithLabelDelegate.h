//
//  PhotoWithLabelDelegate.h
//  ParisGateaux
//
//  Created by techmaster on 8/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PhotoWithLabelDelegate <NSObject>
- (void) onItemTap: (NSInteger)ID;
@end
