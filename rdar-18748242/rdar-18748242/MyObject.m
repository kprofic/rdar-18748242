//
//  MyObject.m
//  rdar-18748242
//
//  Created by Krzysztof Profic on 31/10/14.
//  Copyright (c) 2014 Trifork. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject

- (void)awakeFromNib
{
    // This outlet will be connected when object is dearchived from xib file but it will be nil when dearchived from storyboard !
    NSLog(@"MyObject awakeFromNib, someOutlet is: %@", self.someOutlet);
}

@end
