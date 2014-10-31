//
//  ViewController.m
//  rdar-18748242
//
//  Created by Krzysztof Profic on 31/10/14.
//  Copyright (c) 2014 Trifork. All rights reserved.
//

#import "StoryboardBasedVC.h"
#import "MyObject.h"
#import "XibBasedVC.h"

@interface StoryboardBasedVC ()
@property (weak, nonatomic) IBOutlet id someOutlet;
@property (strong, nonatomic) IBOutlet MyObject *storyboardObjectOutlet;
@end

@implementation StoryboardBasedVC


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // This outlet is nil, the same outlet connection when loaded from nib is not nil
    NSLog(@"StoryboardBasedVC awakeFromNib, someOutlet is: %@", self.someOutlet);
    
    // only this outlet is not nil when loading from storyboard (a reference to NSObject created within storyboard)
    // however an internal outlet on MyObject here to another object from this storyboard will be nil on its' awakeFromNib
    // @see MyObject awakeFromNib for more details
    NSLog(@"StoryboardBasedVC awakeFromNib, storyboardObjectOutlet is: %@", self.storyboardObjectOutlet);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"\n\n");
}

- (IBAction)openNibVC:(id)sender
{
    XibBasedVC * vc = [[XibBasedVC alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
