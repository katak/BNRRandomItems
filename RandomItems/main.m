//
//  main.m
//  RandomItems
//
//  Created by Kris Kata on 5/9/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        BNRContainer *itemAsContainer = [[BNRContainer alloc] initWithItemName:@"SmallBox"
                                                                valueInDollars:10000
                                                                itemsContained:items];
        [items insertObject:itemAsContainer atIndex:items.count];
        
        BNRContainer *container = [[BNRContainer alloc] initWithItemName:@"BigBox"
                                                          valueInDollars:5000
                                                          itemsContained:items];
        
        NSLog(@"\n\n\n%@", container);
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

