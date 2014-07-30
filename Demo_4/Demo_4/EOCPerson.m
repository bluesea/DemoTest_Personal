//
//  EOCPerson.m
//  Demo_4
//
//  Created by pingyandong on 14-7-30.
//  Copyright (c) 2014年 平 艳东. All rights reserved.
//

#import "EOCPerson.h"

@interface EOCPerson ()
@property (nonatomic,copy,readwrite)NSString *firstName;

- (void)test;
@end


@implementation EOCPerson
- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName
{
    if (self = [super init]) {
        _firstName = firstName;
        _lastName = lastName;
    }
    return self;
}

- (void)test
{
    self.firstName = @"312321";
}



@end
