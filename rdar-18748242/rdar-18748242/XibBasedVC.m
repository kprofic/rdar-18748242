//
//  XibBasedVC.m
//  rdar-18748242
//
//  Created by Krzysztof Profic on 31/10/14.
//  Copyright (c) 2014 Trifork. All rights reserved.
//

#import "XibBasedVC.h"
#import "MyObject.h"
#import "XibUnarchivedVC.h"

@interface XibBasedVC ()
@property (weak, nonatomic) IBOutlet id someOutlet;
@property (strong, nonatomic) IBOutlet MyObject *nibObjectOutlet;
@property (strong, nonatomic) IBOutlet XibUnarchivedVC *nibUnarchovedVC;

@end

@implementation XibBasedVC

@end
