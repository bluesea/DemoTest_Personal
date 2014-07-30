//
//  EOCPerson+Firendship.h
//  Demo_4
//
//  Created by pingyandong on 14-7-30.
//  Copyright (c) 2014年 平 艳东. All rights reserved.
//

#import "EOCPerson.h"

@interface EOCPerson (Firendship)
//分类中不能直接添加实例变量
//@property (nonatomic,strong) NSArray *testArray;
@property (nonatomic,strong) NSArray *friendsTest;

- (void)addFriend:(EOCPerson *)person;



@end
