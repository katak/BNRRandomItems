//
//  BNRContainer.m
//  RandomItems
//
//  Created by Kris Kata on 5/13/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int) value
                  itemsContained:(NSArray *)items
{
    self = [super initWithItemName:name
                    valueInDollars:value
                      serialNumber:@"CONTA"];
    
    if (self && items) {
        _subItems = items;
    }
    
    return self;
}

- (void)setSubItems:(NSArray *)items
{
    _subItems = items;
}

- (NSArray *)subItems
{
    return _subItems;
}

- (int)valueInDollars
{
    int totalValueOfContainedItems = 0;
    
    for (BNRItem *item in [self subItems]) {
        totalValueOfContainedItems += item.valueInDollars;
    }
    
    return [super valueInDollars] + totalValueOfContainedItems;
}

- (NSString *)description
{
    NSString *itemsDescription = @"";
    
    for (BNRItem *item in [self subItems]) {
        itemsDescription = [itemsDescription stringByAppendingFormat:@"\t%@\n",item.description];
    }
    
    // container name, value in dollars, list of items
    return [NSString stringWithFormat:@"Name: %@\nValue: %d\n%@", self.itemName, self.valueInDollars, itemsDescription];
}
@end
