//
//  NSIndexPath+FileIndexPath.m
//  Demo_4
//
//  Created by pingyandong on 14-7-30.
//  Copyright (c) 2014年 平 艳东. All rights reserved.
//

#import "NSIndexPath+FileIndexPath.h"
#import <objc/runtime.h>

static const char* kFilePagePropertyKey = "kFilePagePropertyKey";
static const char* kFileNamePropertyKey = "kFileNamePropertyKey";

@implementation NSIndexPath (FileIndexPath)
@dynamic filePage;
@dynamic fileName;

- (NSInteger)filePage
{
    return objc_getAssociatedObject(self, kFilePagePropertyKey);
}

- (void)setFilePage:(NSInteger)filePage
{
    NSNumber *number= @(filePage);
    objc_setAssociatedObject(self, kFilePagePropertyKey, number, OBJC_ASSOCIATION_COPY);
}

- (NSString *)fileName
{
    return objc_getAssociatedObject(self, kFileNamePropertyKey);
}

- (void)setFileName:(NSString *)fileName
{
    objc_setAssociatedObject(self, kFileNamePropertyKey, fileName, OBJC_ASSOCIATION_COPY);
}

@end
