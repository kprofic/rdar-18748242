//
//  XibUnarchivedVC.m
//  rdar-18748242
//
//  Created by Krzysztof Profic on 31/10/14.
//  Copyright (c) 2014 Trifork. All rights reserved.
//

#import "XibUnarchivedVC.h"
#import "MyObject.h"

@interface XibUnarchivedVC ()
@property (weak, nonatomic) IBOutlet MyObject *xibObjectOutlet;
@property (weak, nonatomic) IBOutlet UILabel *someOutlet;
@end

@implementation XibUnarchivedVC

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // This two outlets here are properly connected as the VC is dearchived from xib file not storyboard.
    NSLog(@"XibUnarchivedVC awakeFromNib, someOutlet is: %@", self.someOutlet);
    NSLog(@"XibUnarchivedVC awakeFromNib, xibObjectOutlet is: %@", self.xibObjectOutlet);
}

@end
