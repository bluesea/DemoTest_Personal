//
//  EOCPerson.h
//  Demo_4
//
//  Created by pingyandong on 14-7-30.
//  Copyright (c) 2014年 平 艳东. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject

@property (nonatomic,copy,readonly)NSString *firstName;
@property (nonatomic,copy,readonly)NSString *lastName;
@property (nonatomic,strong,readonly)NSMutableArray *friends;

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;

@end
