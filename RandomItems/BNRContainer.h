//
//  BNRContainer.h
//  RandomItems
//
//  Created by Kris Kata on 5/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSArray *_subItems;
}

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value itemsContained:(NSArray *)items;

@end
