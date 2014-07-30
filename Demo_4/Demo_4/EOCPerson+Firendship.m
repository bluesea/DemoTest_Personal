//
//  EOCPerson+Firendship.m
//  Demo_4
//
//  Created by pingyandong on 14-7-30.
//  Copyright (c) 2014年 平 艳东. All rights reserved.
//

#import "EOCPerson+Firendship.h"
#import <objc/runtime.h>

static const char* kFriendPropertyKey = "kFriendPropertyKey";

@implementation EOCPerson (Firendship)
@dynamic friendsTest;

- (void)addFriend:(EOCPerson *)person
{
    //[EOCPerson(Firendship) addFriend:]
    NSLog(@"%s(%d)-%s",__FILE__,__LINE__,__FUNCTION__);
//    NSAssert(person, @"person must not be nil");
    [self.friends addObject:person];
//    self.testArray = @[@"321",@"321"];
//    NSLog(@"%@",self.testArray);
}

- (NSArray *)friendsTest
{
    return objc_getAssociatedObject(self, kFriendPropertyKey);
}

- (void)setFriendsTest:(NSArray *)friendsTest
{
    objc_setAssociatedObject(self, kFriendPropertyKey,friendsTest, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
